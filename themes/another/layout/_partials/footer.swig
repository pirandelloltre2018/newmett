<footer class="footer clearfix">
  <div class="copyright" >
    <span>Copyright</span>
    {% set current = date(Date.now(), "YYYY") %}
    &copy; {% if theme.since and theme.since != current %} {{ theme.since }}-{% endif %}
    <span itemprop="copyrightYear">{{ current }}</span>
    <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
  </div>

  <div class="info">
    <script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>
    {% if theme.birth_day %}
      <span id="showDays" class="show-days"></span>
      <script>
      var birthDay = new Date('{{ theme.birth_day }}');
      var now = new Date();
      var duration = now.getTime() - birthDay.getTime();
      var total= Math.floor(duration / (1000 * 60 * 60 * 24));
      document.getElementById("showDays").innerHTML = "website running for "+total+" days";
      </script>
      ---
    {% endif %}
    
  </div>

  <div class="my-theme">
    Theme by <a href="//defendersofsteel.net">defendersofsteel</a> | <p>defendersofsteel.net</p>
  </div>

</footer>
