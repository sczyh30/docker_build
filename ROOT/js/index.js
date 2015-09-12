//响应式导航部分

//Highlight部分
$(document).ready(function() {
    $('pre code').each(function(i, block) {
        hljs.highlightBlock(block);
    });
});
hljs.initHighlightingOnLoad();

function alert_will(){
    alert("后端服务器暂不可用");
}