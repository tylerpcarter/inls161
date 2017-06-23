<label for='info' class='margin-toggle'> &#8853;</label>
<input type='checkbox' id='info' class='margin-toggle'/>
<span class='marginnote'>
<span class="date larger">{{ "Course Info" | upcase }}</span><br/><br/>
<span class="{{ site.data.info.instructor.icon }}">&nbsp;**Instructor:**</span> [{{ site.data.info.instructor.var }}]({{ site.data.info.instructor.link }})<br/>
<span class="{{ site.data.info.email.icon }}">&nbsp;**Email:**</span> <a href="{{ site.data.info.email.link }}">{{ site.data.info.email.var }}</a><br/>
<span class="ico-book">&nbsp;**Office hours:**</span> I will be available for help in the lab starting at 10:30 on Fridays. Email me to meet any other weekday. I will also be on <a href="{{ site.data.info.slack.link }}" target="_blank"><span class="{{ site.data.info.slack.icon }}"> Slack</span></a> so you can contact me for questions.<br/><br/>
<span class="{{ site.data.info.time.icon }}">&nbsp;**Time:**</span> 11:30-13:00<br/>
<span class="{{ site.data.info.days.icon }}">&nbsp;**Days:**</span> MoTuWeThFr<br/>
<span class="{{ site.data.info.location.icon }}">&nbsp;**Location:**</span> {{ site.data.info.location.var }}<br/>
{% comment %}<span class="ico-desktop">&nbsp;**Lab:**</span> {{ site.data.dates.lab.dow }}: {{ site.data.dates.lab.place }}.<br/>{% endcomment %}
<span class="ico-calendar-open">&nbsp;**Dates:**</span> {{ site.data.dates.begin.date | date: "%-d %B %Y" }} - {{ site.data.dates.end.date | date: "%-d %B %Y" }}<br/>
<span class="ico-pencil">&nbsp;**Exam period:**</span> {{ site.data.dates.exam.time  }} {{ site.data.dates.exam.date | date: "%-d %B %Y" }}<br/><br/>{% comment %}
<span class="{{ site.data.info.sakai.icon }}">&nbsp;**Sakai**</span>: [{{ site.data.info.sakai.link }}]({{ site.data.info.sakai.link }})<br/>
<span class="{{ site.data.info.github.icon }}">&nbsp;**GitHub**</span>: [{{ site.data.info.github.link }}]({{ site.data.info.github.link }})<br/>
<span class="{{ site.data.info.slack.icon }}">&nbsp;**Slack**</span>: [{{ site.data.info.slack.link }}]({{ site.data.info.slack.link }})<br/>
<span class="{{ site.data.info.rss.icon }}">&nbsp;**Schedule feed**</span>: [{{ site.url }}{{ site.data.info.rss.link }}]({{ site.data.info.rss.link }})<br/>{% endcomment %}
</span>