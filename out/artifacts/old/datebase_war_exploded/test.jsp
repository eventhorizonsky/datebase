<!DOCTYPE html>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
  <link rel="stylesheet" href="http://form.making.link/public/lib/form-making/dist/FormMaking.css">
</head>
<body>
<div id="app">
  <fm-generate-form
          :data="jsonData"
          :remote="remoteFuncs"
          :value="editData"
          :remote-option="dynamicData"
          ref="generateForm"
  >
  </fm-generate-form>
  <el-button type="primary" @click="handleSubmit">Submit</el-button>
</div>
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script src="http://form.making.link/public/lib/form-making/dist/FormMaking.umd.js"></script>
<script>
  new Vue({
    el: '#app',
    data: {
      jsonData: {"list":[{"type":"input","icon":"icon-input","options":{"width":"100%","defaultValue":"","required":false,"requiredMessage":"","dataType":"","dataTypeCheck":false,"dataTypeMessage":"","pattern":"","patternCheck":false,"patternMessage":"","placeholder":"","customClass":"","disabled":false,"labelWidth":100,"isLabelWidth":false,"hidden":false,"dataBind":true,"showPassword":false,"remoteFunc":"func_1620972864588","remoteOption":"option_1620972864588"},"name":"风险点编号","key":"1620972864588","model":"input_1","rules":[]},{"type":"input","icon":"icon-input","options":{"width":"100%","defaultValue":"","required":false,"requiredMessage":"","dataType":"","dataTypeCheck":false,"dataTypeMessage":"","pattern":"","patternCheck":false,"patternMessage":"","placeholder":"","customClass":"","disabled":false,"labelWidth":100,"isLabelWidth":false,"hidden":false,"dataBind":true,"showPassword":false,"remoteFunc":"func_1620972938509","remoteOption":"option_1620972938509"},"name":"风险点名称","key":"1620972938509","model":"input_2","rules":[]},{"type":"input","icon":"icon-input","options":{"width":"100%","defaultValue":"","required":false,"requiredMessage":"","dataType":"","dataTypeCheck":false,"dataTypeMessage":"","pattern":"","patternCheck":false,"patternMessage":"","placeholder":"","customClass":"","disabled":false,"labelWidth":100,"isLabelWidth":false,"hidden":false,"dataBind":true,"showPassword":false,"remoteFunc":"func_1620972955789","remoteOption":"option_1620972955789"},"name":"风险点位置","key":"1620972955789","model":"input_3","rules":[]},{"type":"input","icon":"icon-input","options":{"width":"100%","defaultValue":"","required":false,"requiredMessage":"","dataType":"","dataTypeCheck":false,"dataTypeMessage":"","pattern":"","patternCheck":false,"patternMessage":"","placeholder":"","customClass":"","disabled":false,"labelWidth":100,"isLabelWidth":false,"hidden":false,"dataBind":true,"showPassword":false,"remoteFunc":"func_1620972973413","remoteOption":"option_1620972973413"},"name":"风险因素","key":"1620972973413","model":"input_4","rules":[]},{"type":"input","icon":"icon-input","options":{"width":"100%","defaultValue":"","required":false,"requiredMessage":"","dataType":"","dataTypeCheck":false,"dataTypeMessage":"","pattern":"","patternCheck":false,"patternMessage":"","placeholder":"","customClass":"","disabled":false,"labelWidth":100,"isLabelWidth":false,"hidden":false,"dataBind":true,"showPassword":false,"remoteFunc":"func_1620972993054","remoteOption":"option_1620972993054"},"name":"风险类别","key":"1620972993054","model":"input_5","rules":[]},{"type":"input","icon":"icon-input","options":{"width":"100%","defaultValue":"","required":false,"requiredMessage":"","dataType":"","dataTypeCheck":false,"dataTypeMessage":"","pattern":"","patternCheck":false,"patternMessage":"","placeholder":"","customClass":"","disabled":false,"labelWidth":100,"isLabelWidth":false,"hidden":false,"dataBind":true,"showPassword":false,"remoteFunc":"func_1620973010012","remoteOption":"option_1620973010012"},"name":"风险级别","key":"1620973010012","model":"input_6","rules":[]},{"type":"input","icon":"icon-input","options":{"width":"100%","defaultValue":"","required":false,"requiredMessage":"","dataType":"","dataTypeCheck":false,"dataTypeMessage":"","pattern":"","patternCheck":false,"patternMessage":"","placeholder":"","customClass":"","disabled":false,"labelWidth":100,"isLabelWidth":false,"hidden":false,"dataBind":true,"showPassword":false,"remoteFunc":"func_1620973031124","remoteOption":"option_1620973031124"},"name":"房间负责人","key":"1620973031124","model":"input_1620973031124","rules":[]}],"config":{"labelWidth":100,"labelPosition":"right","size":"small","customClass":"","ui":"element","layout":"horizontal","labelCol":3,"width":"100%","hideLabel":false,"hideErrorMessage":false,"dataSource":[{"key":"upload","name":"Get Upload Token","url":"http://tools-server.making.link/api/uptoken","method":"GET","auto":true,"responseFunc":"return res.uptoken;"},{"key":"getoptions","name":"Get Options","url":"http://tools-server.making.link/api/new/options","method":"GET","auto":true,"responseFunc":"return res.data;"}]}},
      editData: {},
      remoteFuncs: {

      },
      dynamicData: {

      }
    },
    methods: {
      handleSubmit () {
        this.$refs.generateForm.getData().then(data => {
          // Data verification succeeded
          alert(JSON.stringify(data))
        }).catch(e => {
          // Data verification failed
        })
      }
    }
  })
</script>
</body>
</html>