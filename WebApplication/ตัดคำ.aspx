<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ตัดคำ.aspx.cs" Inherits="WebApplication.ตัดคำ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    
    article > p{
font-size:1em;
line-height:1em;
border:3px solid #00ACEE;
width:500px;
height: 5em;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <article>
<h1>กระต่ายกับเต่า ภาคสุดยอดวิชา</h1>
<footer>by siamhtml.com</footer>
<p>
1st Round?กาลครั้งหนึ่ง เจ้าเต่ากับกระต่ายเถียงกันว่าใครเร็วกว่ากัน ทั้งคู่จึงตกลงที่จะวิ่งแข่ง ทั้งคู่จึงกำหนดเส้นทางแข่งและเริ่มการแข่งขัน??เจ้ากระต่ายนำโด่งมาไกลก็เลยชะล่าใจ คิดว่าพักผ่อนใต้ต้นไม้ซักกะแป๊บนึงก่อนแข่งต่อก็คงดี ไป ๆ มา ๆ ก็ง่วงสิ ตื่นมาอีกทีเจ้าเต่าก็คว้าแชมป์ไปแล้ว?นิทานตอนนี้สอนให้รู้ว่า ช้า ๆ แต่มั่นคงสามารถเอาชนะได้ (เหมือนกัน)?

นี่เป็นเวอร์ชั่นเดะ ๆ ที่เราคุ้นหูกัน??ไม่นานมานี้มีคนเล่าเวอร์ชั่นใหม่ที่น่าสนใจให้ฟัง?

2nd Roundเจ้ากระต่ายสันหลังยาวก็รมบ่จอยตามระเบียบที่แพ้ มันจึงค้นหาจุดอ่อนของตนเองมันก็พบว่าความมั่นใจในตนเองเกินไปบวกกับความขี้เกียจของมันนั่นแหละที่ทำให้แพ้ ถ้ามันไม่เผลอหลับซะอย่าง เต่าหน้าไหนจะเอาชนะมันได้ มันจึงขอแก้ตัวใหม่อีกครั้ง และเต่าก็ยินยอม แน่นอนว่าครั้งนี้ เจ้าเต่าโดนทิ้งไม่เห็นฝุ่น กระต่ายชนะขาดลอยเราได้ข้อคิดอะไรล่ะ…ต่อให้ช้าแต่ชัวร์ ยังไงก็แพ้เร็วและสม่ำเสมอ ถ้าเราเปรียบเทียบคนทั้งสองคนในองค์กรของเรา คนนึงช้าจริง ทำอะไรมีระบบระเบียบแบบแผน แต่ทำอะไร ๆ ไม่เคยพลาด ไว้ใจได้แน่นอนในผลงานของเขา เทียบกับอีกคนนึงที่เร็วและก็พอไว้ใจได้ในสิ่งที่เขาทำ คนที่เร็วกว่ามักจะประสบความสำเร็จมีความเจริญก้าวหน้าในองค์กรนั้น ๆ มากกว่า?ไอ้ช้าแต่ชัวร์น่ะมันก็ดีอยู่หรอก แต่ให้เร็วและเชื่อถือได้นี่ดีกว่า

เรื่องยังไม่จบแค่นี้…
- See more at: http://www.kwamru.com/173#sthash.nSFUFn1f.dpuf
</p>
</article>
    </div>
    </form>
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/dotdotdot/jquery.dotdotdot.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('article > p').dotdotdot({
                ellipsis: '...', /* The HTML to add as ellipsis. */
                wrap: 'word', /* How to cut off the text/html: 'word'/'letter'/'children' */
                watch: true /* Whether to update the ellipsis: true/'window' */
            });
        });
</script>
</body>
</html>
