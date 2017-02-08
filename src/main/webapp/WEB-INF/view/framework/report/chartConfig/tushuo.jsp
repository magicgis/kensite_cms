<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/taglib/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" class="dtm-html-mf">
	<head>
		<title>Kensite开发平台</title>
		<%@ include file="/WEB-INF/view/taglib/header.jsp" %>
		<%@ include file="/WEB-INF/view/taglib/layui.jsp" %>
		<%@ include file="/WEB-INF/view/taglib/echarts.jsp" %>
		<%@ include file="/WEB-INF/view/taglib/codemirror.jsp" %>
		<link rel="stylesheet" href="${ctx_static}/tushuo/static/pie/css/waveApp.css" type="text/css"/>
		<style type="text/css">
		</style>
	</head>

	<body class="cpt cpt-wave">
        <div id="wave-main">
            <div class="cpt cpt-manufacture">
                <!-- 主体开始 -->
                <div class="dtm-mf-paper-box" style="margin-right: 0px; margin-left: 680px; opacity: 1; top: -61px;">
                    <div class="cpt cpt-mf-paper">
                        <div class="dtp-paper dtp-theme-aatushuo" data-dtppr="999" data-paper-theme="aatushuo">
                            <div class="dtp-paper-view" style="">
                            <div class="dtp-paper-con ui-sortable">
                                <div data-dtwgt="3713" class="dtp-wgt dtp-wgt-schart dtp-lay-mnr-doc cpt-mf-paper-dwgt cpt-mf-paper-dwgt-pnedt">
                                    <div id="main" class="dtp-wgt-container dtp-wgt-schart-container" style=""></div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 主体结束 -->
            
                <!-- 参数调整 -->
                <div style="display: block; left: 0px; top: 0px;" class="cpt cpt-chtedt">
                    <div class="cpt cpt-btn dtm-btn dtm-close-btn">保存</div>
                    <div class="dtm-tabh cpt cpt-tab">
                        <ul class="dtm-tabh-h">
                            <li data-cpt-tabh="dataEditor" class="dtm-tabh-hi dtm-tabh-hi-curr">数据编辑</li>
                            <li data-cpt-tabh="chartConfigurer" class="dtm-tabh-hi">参数调整</li>
                            <li data-cpt-tabh="extendJs" class="dtm-tabh-hi" style="display:none;">扩展函数</li>
                        </ul>
                        <div class="dtm-conh-data-editor dtm-tabh-coni cpt cpt-datedt cpt-datedt-pie" data-cpt-conh="dataEditor" style="display: block;">
                            <!-- <div class="dtm-cfg-head">
                                <div class="dtm-cfgpn"></div>
                                <div class="cpt cpt-upld">
                                    <span class="dtm-upld-btn fileinput-button">生成配置</span>
                                </div>
                            </div> -->
                            <div class="dtm-handsontable handsontable" id="ht_c0ae913fd814788d">
                                <div id="KSreport" style="position:absolute; top:0px; bottom:0px; left:0px; right:0px; border: 0px; padding-top: 15px; overflow-y: auto;">
                                    <form id="setting" class="layui-form" action="">
                                        <fieldset class="layui-elem-field layui-field-title">
                                            <legend>系列</legend>
                                            <div class="layui-field-box">
                                                <div class="layui-form-item">
                                                    <label id="legend" class="layui-form-label">数据源</label>
                                                    <div class="layui-input-inline">
                                                        <select name="legend" lay-filter="md">
                                                            <option value="">请选择数据源</option>
                                                            <optgroup label="SQL数据源">
                                                                <option value="code">员工编号</option>
                                                            </optgroup>
                                                            <optgroup label="BO数据源">
                                                                <option value="plan">生产计划</option>
                                                                <option value="sales">销售记录</option>
                                                            </optgroup>
                                                            <optgroup label="文本数据源">
                                                            </optgroup>
                                                        </select>
                                                    </div>
                                                    <label id="legend-key" class="layui-form-label">系列KEY</label>
                                                    <div class="layui-input-inline">
                                                        <select name="legend-key">
                                                            <option value="">请选择</option>
                                                            <option value="name">姓名</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="layui-form-item">
                                                    <label id="legend-value" class="layui-form-label">VALUE</label>
                                                    <div class="layui-input-inline">
                                                        <select name="legend-value">
                                                            <option value="">请选择</option>
                                                            <option value="name">姓名</option>
                                                            <option value="age">年龄</option>
                                                            <option value="sex">性别</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset class="layui-elem-field layui-field-title">
                                            <legend>X轴</legend>
                                            <div class="layui-field-box">
                                                <div class="layui-form-item">
                                                    <label id="x" class="layui-form-label">数据源</label>
                                                    <div class="layui-input-inline">
                                                        <select name="x" lay-filter="md">
                                                            <option value="">请选择数据源</option>
                                                            <optgroup label="SQL数据源">
                                                                <option value="code">员工编号</option>
                                                            </optgroup>
                                                            <optgroup label="BO数据源">
                                                                <option value="plan">生产计划</option>
                                                                <option value="sales">销售记录</option>
                                                            </optgroup>
                                                            <optgroup label="文本数据源">
                                                            </optgroup>
                                                        </select>
                                                    </div>
                                                    <label id="x-legend-key" class="layui-form-label">系列KEY</label>
                                                    <div class="layui-input-inline">
                                                        <select name="x-legend-key">
                                                            <option value="">请选择</option>
                                                            <option value="name">姓名</option>
                                                            <option value="age">年龄</option>
                                                            <option value="sex">性别</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="layui-form-item">
                                                    <label id="x-key" class="layui-form-label">X轴KEY</label>
                                                    <div class="layui-input-inline">
                                                        <select name="x-key">
                                                            <option value="">请选择</option>
                                                            <option value="name">姓名</option>
                                                            <option value="age">年龄</option>
                                                            <option value="sex">性别</option>
                                                        </select>
                                                    </div>
                                                    <label id="x-value" class="layui-form-label">VALUE</label>
                                                    <div class="layui-input-inline">
                                                        <select name="x-value">
                                                            <option value="">请选择</option>
                                                            <option value="name">姓名</option>
                                                            <option value="age">年龄</option>
                                                            <option value="sex">性别</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset class="layui-elem-field layui-field-title">
                                            <legend>Y轴</legend>
                                            <div class="layui-field-box">
                                                <div class="layui-form-item">
                                                    <label id="y" class="layui-form-label">数据源</label>
                                                    <div class="layui-input-inline">
                                                        <select name="y" lay-filter="md">
                                                            <option value="">请选择数据源</option>
                                                            <optgroup label="SQL数据源">
                                                                <option value="code">员工编号</option>
                                                            </optgroup>
                                                            <optgroup label="BO数据源">
                                                                <option value="plan">生产计划</option>
                                                                <option value="sales">销售记录</option>
                                                            </optgroup>
                                                            <optgroup label="文本数据源">
                                                            </optgroup>
                                                        </select>
                                                    </div>
                                                    <label id="y-legend-key" class="layui-form-label">系列KEY</label>
                                                    <div class="layui-input-inline">
                                                        <select name="y-legend-key">
                                                            <option value="">请选择</option>
                                                            <option value="name">姓名</option>
                                                            <option value="age">年龄</option>
                                                            <option value="sex">性别</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="layui-form-item">
                                                    <label id="y-x-key" class="layui-form-label">X轴KEY</label>
                                                    <div class="layui-input-inline">
                                                        <select name="y-x-key">
                                                            <option value="">请选择</option>
                                                            <option value="name">姓名</option>
                                                            <option value="age">年龄</option>
                                                            <option value="sex">性别</option>
                                                        </select>
                                                    </div>
                                                    <label id="y-value" class="layui-form-label">VALUE</label>
                                                    <div class="layui-input-inline">
                                                        <select name="y-value">
                                                            <option value="">请选择</option>
                                                            <option value="name">姓名</option>
                                                            <option value="age">年龄</option>
                                                            <option value="sex">性别</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="dtm-conh-chart-configurer dtm-tabh-coni cpt cpt-chtcf" data-cpt-conh="chartConfigurer" style="display: none;">
                            <div class="cpt cpt-tab">
                                <ul class="dtm-tab0">
                                    <li data-cpt-tab0="base" class="dtm-tab0-hi dtm-tab0-hi-curr">系列</li>
                                    <li data-cpt-tab0="title" class="dtm-tab0-hi">标题</li>
                                    <li data-cpt-tab0="legend" class="dtm-tab0-hi">图例</li>
                                    <li data-cpt-tab0="tooltip" class="dtm-tab0-hi">提示</li>
                                    <li data-cpt-tab0="toolbox" class="dtm-tab0-hi">工具</li>
                                </ul>
                                <!-- 系列开始 -->
                                <div data-cpt-con0="base" class="dtm-tab0-coni cpt cpt-chtcf-sertpn cpt-chtcf-sbtpn" style="display: block;">
                                    <div class="cpt cpt-tab">
                                        <div class="dtm-sertb-up"></div>
                                        <div class="dtm-tab1">
                                            <div data-cpt-add="series" class="dtm-tab1-hi">
                                            </div>
                                            <div class="dtm-tab1-inner" style="top: 0px;">
                                                <div class="cpt cpt-foreach" id="legend-menu">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="dtm-sertb-down"></div>
                                        <div class="cpt cpt-foreach" id="legend-div">
                                            
                                        </div>
                                    </div>
                                </div>
                                <!-- 系列结束 -->
                                <!-- 标题开始 -->
                                <div data-cpt-con0="title" class="dtm-tab0-coni cpt cpt-chtcf-sbtpn" style="display: none;">
                                    <div class="cpt cpt-tab">
                                        <div class="dtm-tab1">
                                            <div data-cpt-tab1="content" class="dtm-tab1-hi dtm-tab1-hi-curr">内容</div>
                                            <div data-cpt-tab1="style" class="dtm-tab1-hi">样式</div>
                                        </div>
                                        <div data-cpt-con1="content" class="dtm-tab1-coni cpt cpt-edtpn" style="display: block;">
                                            <div class="cpt cpt-sclpn dim-sclpn">
                                                <div data-cpt-sclpn-con="" class="dtm-edtcom-pn dtm-edtpn-pn cpt-sclpn-con" style="position: absolute; top: 0px;">
                                                    <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                    <div class="dtm-edtblk-title"></div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.title.text='';">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">主标题文本</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-txiptggt dtm-edtitm-ggt">
                                                            <div class="cpt cpt-txipt">
                                                            <div>
                                                                <input value="主标题文本" type="text" data-opt="chartOpt.title.text='val';"></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm cpt-disabled cpt-ggt-edtitm-disabled dtm-edtitm-disabled">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.title.link='';">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">主标题文本超链接</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-txiptggt dtm-edtitm-ggt cpt-disabled cpt-txiptggt-disabled dtm-edtitm-ggt-disabled">
                                                            <div class="cpt cpt-txipt cpt-disabled cpt-txipt-disabled">
                                                            <div>
                                                                <input value="http://" type="text" data-opt="chartOpt.title.link='val';"></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.title.subtext='';">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">副标题文本</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-txiptggt dtm-edtitm-ggt">
                                                            <div class="cpt cpt-txipt">
                                                            <div>
                                                                <input value="副标题文本" type="text" data-opt="chartOpt.title.subtext='val';"></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm cpt-disabled cpt-ggt-edtitm-disabled dtm-edtitm-disabled">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.title.sublink='';">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">副标题文本超链接</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-txiptggt dtm-edtitm-ggt cpt-disabled cpt-txiptggt-disabled dtm-edtitm-ggt-disabled">
                                                            <div class="cpt cpt-txipt cpt-disabled cpt-txipt-disabled">
                                                            <div>
                                                                <input value="http://" type="text" data-opt="chartOpt.title.sublink='val';"></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div data-cpt-con1="style" class="dtm-tab1-coni cpt cpt-edtpn" style="display: none;">
                                            <div class="cpt cpt-sclpn dim-sclpn">
                                                <div data-cpt-sclpn-con="" class="dtm-edtcom-pn dtm-edtpn-pn cpt-sclpn-con cpt-sclpn-con-vscl" style="position: absolute; top: 0px;">
                                                    <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                        <div class="dtm-edtblk-title">标题块位置</div>
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.title.x='auto';">
                                                                <em>
                                                                    <i class="dtmic-used"></i>
                                                                </em>
                                                                <span class="dtm-edtitm-title-con">水平安放位置</span>
                                                            </div>
                                                            <div class="dtm-edtitm-con">
                                                                <div class="cpt cpt-sltggt dtm-edtitm-ggt">
                                                                    <div class="cpt cpt-chkbtn">
                                                                    <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.title.x='left';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居左</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.title.x='center';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居中</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="2" data-opt="chartOpt.title.x='right';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居右</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.title.y='auto';">
                                                                <em>
                                                                    <i class="dtmic-used"></i>
                                                                </em>
                                                                <span class="dtm-edtitm-title-con">垂直安放位置</span>
                                                            </div>
                                                            <div class="dtm-edtitm-con">
                                                                <div class="cpt cpt-sltggt dtm-edtitm-ggt">
                                                                    <div class="cpt cpt-chkbtn">
                                                                    <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.title.y='top';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居上</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.title.y='middle';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居中</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="2" data-opt="chartOpt.title.y='bottom';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居下</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm cpt-disabled cpt-ggt-edtitm-disabled dtm-edtitm-disabled">
                                                                <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.title.textAlign='auto';">
                                                                    <em>
                                                                        <i class="dtmic-used"></i>
                                                                    </em>
                                                                    <span class="dtm-edtitm-title-con">水平对齐方式</span>
                                                                </div>
                                                                <div class="dtm-edtitm-con">
                                                                    <div class="cpt cpt-sltggt dtm-edtitm-ggt cpt-disabled cpt-sltggt-disabled dtm-edtitm-ggt-disabled">
                                                                        <div class="cpt cpt-chkbtn cpt-disabled cpt-chkbtn-disabled">
                                                                        <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.title.textAlign='left';">
                                                                            <i>
                                                                            <em></em>
                                                                            </i>
                                                                            <span>居左</span></div>
                                                                        <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.title.textAlign='center';">
                                                                            <i>
                                                                            <em></em>
                                                                            </i>
                                                                            <span>居中</span></div>
                                                                        <div class="cpt-chkbtn-i" data-value-index="2" data-opt="chartOpt.title.textAlign='right';">
                                                                            <i>
                                                                            <em></em>
                                                                            </i>
                                                                            <span>居右</span></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div> -->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 标题结束 -->
                                <!-- 图例开始 -->
                                <div data-cpt-con0="legend" class="dtm-tab0-coni cpt cpt-chtcf-sbtpn" style="display: none;">
                                    <div class="cpt cpt-tab">
                                        <div class="dtm-tab1">
                                            <div data-cpt-tab1="base" class="dtm-tab1-hi dtm-tab1-hi-curr">基础</div>
                                        </div>
                                        <div data-cpt-con1="base" class="dtm-tab1-coni cpt cpt-edtpn" style="display: block;">
                                            <div class="cpt cpt-sclpn dim-sclpn">
                                                <div data-cpt-sclpn-con="" class="dtm-edtcom-pn dtm-edtpn-pn cpt-sclpn-con cpt-sclpn-con-vscl" style="position: absolute; top: 0px;">
                                                    <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                        <div class="dtm-edtblk-title"></div>
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.legend.show=false;">
                                                                <em>
                                                                    <i class="dtmic-used"></i>
                                                                </em>
                                                                <span class="dtm-edtitm-title-con">是否显示图例</span>
                                                            </div>
                                                            <div class="dtm-edtitm-con">
                                                            <div class="cpt cpt-boolggt dtm-edtitm-ggt">
                                                                <div class="cpt cpt-chkbtn">
                                                                <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.legend.show=true;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>是</span></div>
                                                                <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.legend.show=false;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>否</span></div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                        <div class="dtm-edtblk-title">图例位置</div>
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.legend.x='auto';">
                                                                <em>
                                                                    <i class="dtmic-used"></i>
                                                                </em>
                                                                <span class="dtm-edtitm-title-con">水平安放位置</span>
                                                            </div>
                                                            <div class="dtm-edtitm-con">
                                                                <div class="cpt cpt-sltggt dtm-edtitm-ggt">
                                                                    <div class="cpt cpt-chkbtn">
                                                                    <div class="cpt-chkbtn-i" data-value-index="0" data-opt="chartOpt.legend.x='left';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居左</span></div>
                                                                    <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="1" data-opt="chartOpt.legend.x='center';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居中</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="2" data-opt="chartOpt.legend.x='right';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居右</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.legend.y='auto';">
                                                                <em>
                                                                    <i class="dtmic-used"></i>
                                                                </em>
                                                                <span class="dtm-edtitm-title-con">垂直安放位置</span>
                                                            </div>
                                                            <div class="dtm-edtitm-con">
                                                                <div class="cpt cpt-sltggt dtm-edtitm-ggt">
                                                                    <div class="cpt cpt-chkbtn">
                                                                    <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.legend.y='top';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居上</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.legend.y='middle';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居中</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="2" data-opt="chartOpt.legend.y='bottom';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>居下</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.legend.orient='horizontal';">
                                                                <em>
                                                                    <i class="dtmic-used"></i>
                                                                </em>
                                                                <span class="dtm-edtitm-title-con">水平放置还是垂直放置</span>
                                                            </div>
                                                            <div class="dtm-edtitm-con">
                                                                <div class="cpt cpt-sltggt dtm-edtitm-ggt">
                                                                    <div class="cpt cpt-chkbtn">
                                                                    <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.legend.orient='horizontal';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>水平放置</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.legend.orient='vertical';">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>垂直放置</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 图例结束 -->
                                <!-- 提示开始 -->
                                <div data-cpt-con0="tooltip" class="dtm-tab0-coni cpt cpt-chtcf-sertpn cpt-chtcf-sbtpn" style="display: none;">
                                    <div class="cpt cpt-tab">
                                    <div class="dtm-sertb-up"></div>
                                    <div class="dtm-tab1">
                                        <div class="dtm-tab1-inner" style="top: 0px;">
                                        <div data-cpt-tab1="all" class="dtm-tab1-hi dtm-tab1-hi-curr">通用</div>
                                        </div>
                                    </div>
                                    <div class="dtm-sertb-down"></div>
                                    <div data-cpt-con1="all" class="dtm-tab1-coni cpt cpt-edtpn" style="display: block;">
                                        <div class="cpt cpt-sclpn dim-sclpn">
                                            <div data-cpt-sclpn-con="" class="dtm-edtcom-pn dtm-edtpn-pn cpt-sclpn-con cpt-sclpn-con-vscl" style="position: absolute; top: 0px;">
                                                <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                    <div class="dtm-edtblk-title"></div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.tooltip.show=false;">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">是否使用提示</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-boolggt dtm-edtitm-ggt cpt-disabled cpt-boolggt-disabled dtm-edtitm-ggt-disabled">
                                                            <div class="cpt cpt-chkbtn">
                                                            <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.tooltip.show=true;">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>是</span></div>
                                                            <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.tooltip.show=false;">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>否</span></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                    <div class="dtm-edtblk-title">格式模板</div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.tooltip.formatter='{a} &lt;br&gt;{b} : {c} ({d}%)'">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">普通提示模板</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-fmtggt dtm-edtitm-ggt">
                                                            <div class="dtm-fmtggt-desc">模板中可以试试看“{a} {b} {c} {d} {e}”这些变量</div>
                                                            <div class="cpt cpt-txipt">
                                                            <div>
                                                                <input value="{a} &lt;br&gt;{b} : {c} ({d}%)" type="text" data-opt="chartOpt.tooltip.formatter='val';"></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="cpt cpt-foreach">
                                        <div data-cpt-con1="seriesTabKey0" class="cpt cpt-edtpn dtm-tab1-coni" style="display: none;"></div>
                                    </div>
                                    </div>
                                </div>
                                <!-- 提示结束 -->
                                <!-- 工具开始 -->
                                <div data-cpt-con0="toolbox" class="dtm-tab0-coni cpt cpt-chtcf-sbtpn" style="display: none;">
                                    <div class="cpt cpt-tab">
                                        <div class="dtm-tab1">
                                            <div data-cpt-tab1="base" class="dtm-tab1-hi dtm-tab1-hi-curr">基础</div>
                                        </div>
                                        <div data-cpt-con1="base" class="dtm-tab1-coni cpt cpt-edtpn" style="display: block;">
                                            <div class="cpt cpt-sclpn dim-sclpn">
                                                <div data-cpt-sclpn-con="" class="dtm-edtcom-pn dtm-edtpn-pn cpt-sclpn-con cpt-sclpn-con-vscl" style="position: absolute; top: 0px;">
                                                    <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                    <div class="dtm-edtblk-title"></div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.show=false;">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">是否显示工具箱</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-boolggt dtm-edtitm-ggt">
                                                            <div class="cpt cpt-chkbtn">
                                                            <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.toolbox.show=true;">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>是</span></div>
                                                            <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.toolbox.show=false;">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>否</span></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                    <div class="dtm-edtblk-title">工具箱位置</div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.x='auto';">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">水平安放位置</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-sltggt dtm-edtitm-ggt">
                                                            <div class="cpt cpt-chkbtn">
                                                            <div class="cpt-chkbtn-i" data-value-index="0" data-opt="chartOpt.toolbox.x='left';">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>居左</span></div>
                                                            <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.toolbox.x='center';">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>居中</span></div>
                                                            <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="2" data-opt="chartOpt.toolbox.x='right';">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>居右</span></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.y='auto';">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">垂直安放位置</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-sltggt dtm-edtitm-ggt">
                                                            <div class="cpt cpt-chkbtn">
                                                            <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.toolbox.y='top';">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>居上</span></div>
                                                            <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.toolbox.y='middle';">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>居中</span></div>
                                                            <div class="cpt-chkbtn-i" data-value-index="2" data-opt="chartOpt.toolbox.y='bottom';">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>居下</span></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                        <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.orient='horizontal';">
                                                        <em>
                                                            <i class="dtmic-used"></i>
                                                        </em>
                                                        <span class="dtm-edtitm-title-con">水平放置还是垂直放置</span></div>
                                                        <div class="dtm-edtitm-con">
                                                        <div class="cpt cpt-sltggt dtm-edtitm-ggt">
                                                            <div class="cpt cpt-chkbtn">
                                                            <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.toolbox.orient='horizontal';">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>水平放置</span></div>
                                                            <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.toolbox.orient='vertical';">
                                                                <i>
                                                                <em></em>
                                                                </i>
                                                                <span>垂直放置</span></div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    </div>
                                                    <div class="dtm-edtcom-row dtm-edtpn-row cpt cpt-chtcf-edtblk dtm-edtcom-pn">
                                                        <div class="dtm-edtblk-title">功能按钮设定</div>
                                                        <!-- <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.feature.mark.show=false;">
                                                            <em>
                                                                <i class="dtmic-used"></i>
                                                            </em>
                                                            <span class="dtm-edtitm-title-con">绘制辅助线功能按钮</span></div>
                                                            <div class="dtm-edtitm-con">
                                                            <div class="cpt cpt-boolggt dtm-edtitm-ggt">
                                                                <div class="cpt cpt-chkbtn">
                                                                <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.toolbox.feature.mark.show=true;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>是</span></div>
                                                                <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.toolbox.feature.mark.show=false;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>否</span></div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </div> -->
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.feature.dataZoom.show=false;">
                                                            <em>
                                                                <i class="dtmic-used"></i>
                                                            </em>
                                                            <span class="dtm-edtitm-title-con">选区缩放功能按钮</span></div>
                                                            <div class="dtm-edtitm-con">
                                                            <div class="cpt cpt-boolggt dtm-edtitm-ggt">
                                                                <div class="cpt cpt-chkbtn">
                                                                <div class="cpt-chkbtn-i" data-value-index="0" data-opt="chartOpt.toolbox.feature.dataZoom.show=true;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>是</span></div>
                                                                <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="1" data-opt="chartOpt.toolbox.feature.dataZoom.show=false;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>否</span></div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.feature.dataView.show=false;">
                                                            <em>
                                                                <i class="dtmic-used"></i>
                                                            </em>
                                                            <span class="dtm-edtitm-title-con">切换至数据视图按钮</span></div>
                                                            <div class="dtm-edtitm-con">
                                                            <div class="cpt cpt-boolggt dtm-edtitm-ggt">
                                                                <div class="cpt cpt-chkbtn">
                                                                <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.toolbox.feature.dataView.show=true;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>是</span></div>
                                                                <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.toolbox.feature.dataView.show=false;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>否</span></div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                        <!-- <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.feature.magicType.show=false;">
                                                            <em>
                                                                <i class="dtmic-used"></i>
                                                            </em>
                                                            <span class="dtm-edtitm-title-con">折柱切换按钮</span></div>
                                                            <div class="dtm-edtitm-con">
                                                            <div class="cpt cpt-boolggt dtm-edtitm-ggt">
                                                                <div class="cpt cpt-chkbtn">
                                                                <div class="cpt-chkbtn-i" data-value-index="0" data-opt="chartOpt.toolbox.feature.magicType.show=true;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>是</span></div>
                                                                <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="1" data-opt="chartOpt.toolbox.feature.magicType.show=false;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>否</span></div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </div> -->
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.feature.restore.show=false;">
                                                            <em>
                                                                <i class="dtmic-used"></i>
                                                            </em>
                                                            <span class="dtm-edtitm-title-con">还原按钮</span></div>
                                                            <div class="dtm-edtitm-con">
                                                            <div class="cpt cpt-boolggt dtm-edtitm-ggt">
                                                                <div class="cpt cpt-chkbtn">
                                                                <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.toolbox.feature.restore.show=true;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>是</span></div>
                                                                <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.toolbox.feature.restore.show=false;">
                                                                    <i>
                                                                    <em></em>
                                                                    </i>
                                                                    <span>否</span></div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                        <div class="dtm-edtcom-row cpt cpt-ggt-edtitm dtm-edtitm">
                                                            <div class="dtm-edtitm-title dtm-edtitm-tooltip" data-dsp="chartOpt.toolbox.feature.saveAsImage.show=false;">
                                                                <em>
                                                                    <i class="dtmic-used"></i>
                                                                </em>
                                                                <span class="dtm-edtitm-title-con">保存为图片按钮</span>
                                                            </div>
                                                            <div class="dtm-edtitm-con">
                                                                <div class="cpt cpt-boolggt dtm-edtitm-ggt">
                                                                    <div class="cpt cpt-chkbtn">
                                                                    <div class="cpt-chkbtn-i cpt-chkbtn-i-active" data-value-index="0" data-opt="chartOpt.toolbox.feature.saveAsImage.show=true;">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>是</span></div>
                                                                    <div class="cpt-chkbtn-i" data-value-index="1" data-opt="chartOpt.toolbox.feature.saveAsImage.show=false;">
                                                                        <i>
                                                                        <em></em>
                                                                        </i>
                                                                        <span>否</span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 工具结束 -->
                            </div>
                        </div>
                    	<div class="dtm-conh-data-editor dtm-tabh-coni cpt cpt-datedt cpt-datedt-pie" data-cpt-conh="extendJs" style="display: none;">
                            <div class="dtm-handsontable handsontable" id="func_div">
<textarea id="func" style="display:none;">
/*************保留项*************/
var zWhere = "id='$id$'";//系列扩展条件
var xWhere = "name='zhangsan'";//X轴扩展条件
var yWhere = "sex like '男'";//Y轴扩展条件
/*************保留项*************/
/*
if($("#idStr")!=null && $("#idStr").length!=0) {
    var idStr = $("#idStr").textbox("getValue");
    zWhere = zWhere.replace("$id$", idStr);
}
*/
</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 参数调整 -->
            </div>
        </div>
        <!-- bak.htm -->
        <!-- 统计图样式开始 -->
        <style type="text/css">
        .dtp-wgt,.dtp-paper-con,.dtp-lay-mnr-doc{position:relative}.dtp-lay-mnr-abs{position:absolute}.dtp-wgt{padding:0}.dtp-paper{display:none}.dtp-paper-curr{display:block}.dtp-theme-aatushuo .dtp-wgt{margin:20px auto}.dtp-theme-aatushuo .dtp-wgt-schart-container{height:300px}.dtp-theme-aatushuo .dtp-wgt-schart .dtp-wgt-main{display:block;height:100%}.dtp-theme-aatushuo .dtp-wgt-image .dtp-wgt-main{display:block;margin:0 auto;width:100%}.dtp-theme-aatushuo .dtp-wgt-ptext{padding:10px 0;font:13px/1.5 "Helvetica Neue","Microsoft YaHei",Arial,sans-serif}.dtp-theme-aatushuo .dtp-wgt-ftext{font-family:"Helvetica Neue","Microsoft YaHei",Arial,sans-serif}.dtp-theme-aatushuo .dtp-wgt-ftext-container{min-height:30px;line-height:1.3}.dtp-theme-aatushuo .dtp-wgt-ftext-content{white-space:normal;word-break:break-all}.dtp-theme-aatushuo .dtp-wgt-ftext-title0,.dtp-theme-aatushuo .dtp-wgt-ftext-charttitle0{text-align:center}.dtp-theme-aatushuo .dtp-wgt-ftext-title0 .dtp-wgt-ftext-container{font-size:40px;font-weight:bold;border-bottom:4px solid #333}.dtp-theme-aatushuo .dtp-wgt-ftext-charttitle0 .dtp-wgt-ftext-container{font-size:24px;font-weight:bold;border-bottom:2px solid #333}.dtp-theme-aatushuo .dtp-wgt-ftext-bodytext0 .dtp-wgt-ftext-container{font-size:14px}.dtp-theme-aatushuo .dtp-wgt-ftext-quote0 .dtp-wgt-ftext-container{border-left:3px solid #999;padding-left:20px;font-size:14px}.dtp-theme-aatushuo .dtp-wgt-ftext-quotetext{font-style:italic}.dtp-theme-aatushuo .dtp-wgt-ftext-quoteauthor{margin-top:5px}.dtp-theme-aatushuo .dtp-wgt-ftext-bodytext0 .dtp-wgt-ftext-content[data-placeholder]:empty:not(:focus):before{font-size:14px}.dtp-theme-aatushuo .dtp-paper-view{padding:35px 35px;color:#333;background:#fff}
        </style>
        <!-- 统计图样式结束 -->

        <script src="${ctx_static}/tushuo/lib/seajs/sea.js"></script>
        <script>
            seajs.config({
                base: "${ctx_static}/tushuo/lib/",
                alias: {
                    "jquery": "jquery/jquery/1.10.1/jquery.js"
                }
            });
			console.info(seajs);
            seajs.use("${ctx_static}/tushuo/static/pie/js/main");
        </script>
        <script type="text/javascript">
        $(document).ready(function(){
        	
        });
        </script>

<div id="chartOpt" style="display: none;">
chartOpt = {
    title: {
        show: true,
        text: '主标题文本',
        subtext: '副标题文本'
    },
    legend: {
        data: []
    },
    tooltip: {
        show: true,
        formatter: '{a} <br>{b} : {c} ({d}%)'
    },
    toolbox: {
        show: true,
        feature: {
            mark: {
                show: true
            },
            dataZoom: {
                show: false
            },
            dataView: {
                show: true
            },
            magicType: {
                show: true
            },
            restore: {
                show: true
            },
            saveAsImage: {
                show: true
            }
        }
    },
    series : []
};
</div>
    </body>
</html>