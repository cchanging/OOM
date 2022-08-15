#ifndef WARNING
#define WARNING
using namespace SVF;
using namespace llvm;


class Warning{
public:
    const SVFFunction* call_function;
    std::string function_name;
    std::string filename;
    std::string callsite_filename;
    std::string callsite_function;
    int line, callsite_line;

    Warning():call_function(0),
        function_name(""),
        filename(""),
        callsite_filename(""),
        callsite_function(""),
        line(0), callsite_line(0){}

    Warning(const SVFFunction* call_function,
        std::string function_name,
        std::string filename,
        std::string callsite_filename,
        std::string callsite_function,
        int line, int callsite_line)  
        : call_function(call_function),
        function_name(function_name),
        filename(filename),
        callsite_filename(callsite_filename),
        callsite_function(callsite_function),
        line(line), callsite_line(callsite_line){}

    bool operator== (const Warning &b) const{
        if(call_function == b.call_function){
            if(line == b.line && callsite_line == b.callsite_line)
                return true;
        }
        return false;
    }

    bool operator< (const Warning &b) const{
        if(call_function == b.call_function){
            return line < b.line || callsite_line < b.callsite_line;
        }
        return call_function < b.call_function;
    }

    void output(){
        
        std::cout << endl << "warning for the following function:" << endl;
        std::cout << "name:" << function_name << endl;
        std::cout << "filename:" << filename << endl;
        std::cout << "line:" << line << endl;

        std::cout << "callsite_name:" << callsite_function << endl;
        std::cout << "callsite_filename:" << callsite_filename << endl;
        std::cout << "callsite_line:" << callsite_line << endl;
    }
};



extern std::map<const SVFFunction*, std::set<Warning>> warning_sets;
extern std::map<const SVFFunction*, bool> warning_flags;

void warning(const SVFFunction* call_function, const ICFGNode* callsite, string addition){
    auto callsite_func = callsite->getFun();
    warning_flags[callsite_func] = true;
	auto meta_callsite = callsite_func->getLLVMFun()->getMetadata("dbg");
	const DISubprogram* callsite_info = static_cast<const DISubprogram*>(meta_callsite);
	auto meta = call_function->getLLVMFun()->getMetadata("dbg");
	const DISubprogram* info = static_cast<const DISubprogram*>(meta);
	Warning warning_info(call_function,
        info->getName().str() + addition,
        (info->getFile()->getFilename()).str(),
        (callsite_info->getFile()->getFilename()).str(),
        callsite_func->getName(),
        info->getLine(), callsite_info->getLine());
    if(warning_sets.find(callsite_func) == warning_sets.end()){
        std::set<Warning> warning_set;
        warning_set.insert(warning_info);
        warning_sets[callsite_func] = warning_set;
    }
    else{
        std::set<Warning>& warning_set_ref = warning_sets[callsite_func];
        warning_set_ref.insert(warning_info);
    }
}




#endif