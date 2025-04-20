const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm36ra6/",
            name: "ssm36ra6",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm36ra6/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "java护肤品购物系统"
        } 
    }
}
export default base
