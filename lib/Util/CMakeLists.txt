message(STATUS "Found Util LIB")

add_llvm_library(llvmtaUtil
Graph.cpp
Options.cpp
PersistenceScope.cpp
Statistics.cpp
Util.cpp
UtilPathAnalysis.cpp
Vertex.cpp
AbstractAddress.cpp
GlobalVars.cpp
Zhangmethod.cpp

UrGraph.cpp
OurGraph.cpp
DEPENDS LLVMAnalysis LLVMCodeGen LLVMCore LLVMSupport LLVMTarget
)

