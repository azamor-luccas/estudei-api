(this.webpackJsonpadmin=this.webpackJsonpadmin||[]).push([[0],{37:function(e,t,a){},38:function(e,t,a){},60:function(e,t,a){"use strict";a.r(t);var n=a(2),s=a(0),r=a.n(s),i=a(23),c=a.n(i),l=(a(37),a(24)),o=a(25),h=a(26),d=a(9),j=a(31),u=a(29),b=(a(38),a.p+"static/media/logo.13c58b5d.svg"),m=a(6),v=a(10),g=a(8),O=a(28),p=a(30),x=a(27),f=a.n(x).a.create({baseURL:"https://estudei-api.herokuapp.com/api/v1/",headers:{"Content-Type":"application/json"}}),C=function(e){Object(j.a)(a,e);var t=Object(u.a)(a);function a(){var e;return Object(o.a)(this,a),(e=t.call(this)).state={successMessage:"",errorMessage:"",statement:"",alternativeA:"",alternativeB:"",alternativeC:"",alternativeD:"",alternativeE:"",subject:"Matem\xe1tica",correctAlternative:""},e.handleSubmit=e.handleSubmit.bind(Object(d.a)(e)),e.handleChange=e.handleChange.bind(Object(d.a)(e)),e.handleCheckChange=e.handleCheckChange.bind(Object(d.a)(e)),e}return Object(h.a)(a,[{key:"renderAlternativeInputs",value:function(e,t){return Object(n.jsxs)(m.a.Group,{as:v.a,controlId:"formHorizontalPassword",children:[Object(n.jsxs)(m.a.Label,{column:!0,sm:2,children:["Alternativa ",e,"*"]}),Object(n.jsx)(g.a,{sm:10,children:Object(n.jsx)(m.a.Control,{name:"alternative"+e,type:"text",onChange:t,placeholder:"Alternativa "+e})})]})}},{key:"renderAlternativeCheck",value:function(e,t){return Object(n.jsx)(m.a.Check,{type:"radio",onChange:t,label:e,"data-letter":e,name:"formHorizontalRadios",id:"formHorizontalRadios"+e})}},{key:"formFilled",value:function(){return!!(this.state.statement.length&&this.state.alternativeA.length&&this.state.alternativeB.length&&this.state.alternativeC.length&&this.state.alternativeD.length&&this.state.alternativeE.length&&this.state.subject.length&&this.state.correctAlternative.length)}},{key:"cleanForm",value:function(){document.getElementById("form").reset()}},{key:"handleSubmit",value:function(e){var t=this;e.preventDefault(),this.formFilled()?(this.setState({errorMessage:""}),f.post("/question",{statement:this.state.statement,subject:this.state.subject,correctAlternative:this.state.correctAlternative,alternatives:{A:this.state.alternativeA,B:this.state.alternativeB,C:this.state.alternativeC,D:this.state.alternativeD,E:this.state.alternativeE}}).then((function(e){return t.setState({successMessage:"Quest\xe3o enviada com sucesso!"})}),(function(e){return t.setState({errorMessage:"Algo deu errado!"})})).finally(setTimeout((function(){t.cleanForm(),t.setState({successMessage:""})}),2e3))):this.setState({errorMessage:"*Todos os campos devem ser preenchidos"})}},{key:"handleChange",value:function(e){this.setState(Object(l.a)({},e.target.name,e.target.value))}},{key:"handleCheckChange",value:function(e){this.setState({correctAlternative:e.target.getAttribute("data-letter")})}},{key:"render",value:function(){var e=this,t=["A","B","C","D","E"];return Object(n.jsxs)("div",{children:[Object(n.jsx)("div",{className:"header",children:Object(n.jsx)("img",{className:"inverted img-logo",src:b,alt:"logo"})}),Object(n.jsx)(O.a,{children:Object(n.jsxs)(m.a,{id:"form",children:[Object(n.jsxs)(m.a.Group,{as:v.a,controlId:"formHorizontalText",children:[Object(n.jsx)(m.a.Label,{column:!0,sm:2,children:"Enunciado*"}),Object(n.jsx)(g.a,{sm:6,children:Object(n.jsx)(m.a.Control,{name:"statement",as:"textarea",onChange:this.handleChange,rows:"3",placeholder:"Enunciado"})}),Object(n.jsx)(g.a,{})]}),t.map((function(t){return e.renderAlternativeInputs(t,e.handleChange)})),Object(n.jsxs)(m.a.Group,{as:v.a,controlId:"formHorizontalText",children:[Object(n.jsx)(m.a.Label,{column:!0,sm:2,children:"Mat\xe9ria"}),Object(n.jsx)(g.a,{sm:10,children:Object(n.jsxs)(m.a.Control,{name:"subject",onChange:this.handleChange,as:"select",children:[Object(n.jsx)("option",{children:"Matem\xe1tica"}),Object(n.jsx)("option",{children:"F\xedsica"}),Object(n.jsx)("option",{children:"Qu\xedmica"}),Object(n.jsx)("option",{children:"Biologia"})]})})]}),Object(n.jsx)("fieldset",{children:Object(n.jsxs)(m.a.Group,{as:v.a,children:[Object(n.jsx)(m.a.Label,{as:"legend",column:!0,sm:2,children:"Alternativa correta*"}),Object(n.jsx)(g.a,{sm:10,children:t.map((function(t){return e.renderAlternativeCheck(t,e.handleCheckChange)}))})]})}),Object(n.jsx)(m.a.Group,{as:v.a,children:Object(n.jsxs)(g.a,{sm:{span:10,offset:2},children:[Object(n.jsx)(p.a,{onClick:this.handleSubmit,children:"Enviar"}),Object(n.jsx)("p",{className:"red",children:this.state.errorMessage}),Object(n.jsx)("p",{className:"green",children:this.state.successMessage})]})})]})})]})}}]),a}(r.a.Component),k=function(e){e&&e instanceof Function&&a.e(3).then(a.bind(null,61)).then((function(t){var a=t.getCLS,n=t.getFID,s=t.getFCP,r=t.getLCP,i=t.getTTFB;a(e),n(e),s(e),r(e),i(e)}))};a(59);c.a.render(Object(n.jsx)(r.a.StrictMode,{children:Object(n.jsx)(C,{})}),document.getElementById("root")),k()}},[[60,1,2]]]);
//# sourceMappingURL=main.6d62f804.chunk.js.map