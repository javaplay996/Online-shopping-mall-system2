const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm0246o/",
            name: "ssm0246o",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm0246o/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "电子商务推荐系统"
        } 
    }
}
export default base
