import 'package:xml/xml.dart' as xml;
class MovieParser {
  
  String source = '''
  <?xml version="1.0"?>
<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/23785/andre-rieu-2018-maastricht-concert-amore-my-tribute-to-love" class="poster" title="Andre Rieu 2018 Maastricht Concert: Amore - My Tribute to Love" data-gtmclick="23785">
      <img alt="Andre Rieu 2018 Maastricht Concert: Amore - My Tribute to Love" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posters/Andre Low Res - NL poster.PNG" />
    </a>
  </figure>
  <figcaption class="schedule__article">
    <h4>
      <a href="/film/23785/andre-rieu-2018-maastricht-concert-amore-my-tribute-to-love" title="Andre Rieu 2018 Maastricht Concert: Amore - My Tribute to Love" data-gtmclick="23785">Andre Rieu 2018 Maastricht Concert: Amore - My Tribute to Love</a>
      <ul class="schedule-default__icons">
        <li class="js-tooltip-parental-advisory" data-tooltip="Momenteel geen keuring">
          <img src="/assets/img/icons/kijkwijzer/rating-nvt-gray-32.png" alt="Momenteel geen keuring"/>
        </li>
      </ul>
    </h4>
    <div class="schedule__synopsis">
      <p>
        Andr&#233; Rieu, bij miljoenen bekend als ‘De koning van de wals’, is een van de populairste muzikanten ter wereld. Zijn legendarische concert in Maastricht, dat jaarlijks plaatsvindt, is een van de jaarlijkse bioscoopevenementen waarnaar met ongekend enthousiasme wordt uitgekeken.
      </p>
    </div>
  </figcaption>
  <script style="display:none">
    gtmPush('_MovieSchedule', { 'id': function () { return '23785' }, 'name': function () { return 'Andre Rieu 2018 Maastricht Concert: Amore - My Tribute to Love' }, 'list': function () { return _gtmPageName } });
  </script>
  <div class="schedule__wrapper">
    <p class="schedule__location">Path&#233; Tilburg</p>
    <div class="schedule__container js-schedule-block">
      <a href="javascript:;" rel="nofollow" data-href="/tickets/start/2479127" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
        <span class="schedule-time__content">
          <h5>
            <span class="schedule-time__start">19:00</span>
            <span class="schedule-time__end">21:52</span>
          </h5>
          <span class="schedule-time__label" style="background-color: #000000; color: #FFFFFF;">Music </span>
        </span>
      </a>
    </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/21741/ant-man-and-the-wasp" class="poster" title="Ant-Man and The Wasp" data-gtmclick="21741">
      <img alt="Ant-Man and The Wasp" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posterhr/Ant-Man-and-the-Wasp_ps_1_jpg_sd-low_-Marvel-2018 (2).jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
    <h4>
      <a href="/film/21741/ant-man-and-the-wasp" title="Ant-Man and The Wasp" data-gtmclick="21741">
        Ant-Man and The Wasp
      </a>
      <ul class="schedule-default__icons">
        <li class="js-tooltip-parental-advisory" data-tooltip="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene.">
          <img src="/assets/img/icons/kijkwijzer/kijkwijzer-12-gray-32.png" alt="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene."/>
        </li>
        <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
          <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld"/>
        </li>
      </ul>
    </h4>
    <div class="schedule__synopsis">
      <p>
        Scott Lang (Paul Rudd) probeert balans te vinden in een bestaan als superheld (Ant-Man) en een vader voor zijn dochtertje. Hij wordt door Dr. Hank Pym (Michael Douglas) op een nieuwe missie gestuurd waarin hij moet samenwerken met Hope (Evangeline Lilly) aka The Wasp.
      </p>
    </div>
  </figcaption>
  <script style="display:none">
    gtmPush('_MovieSchedule', { 'id': function () { return '21741' }, 'name': function () { return 'Ant-Man and The Wasp' }, 'list': function () { return _gtmPageName } });
  </script>
  <div class="schedule__wrapper">
    <p class="schedule__location">Path&#233; Tilburg</p>
    <div class="schedule__container js-schedule-block">
      <a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659540" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
        <span class="schedule-time__content">
          <h5>
            <span class="schedule-time__start">14:00</span>
            <span class="schedule-time__end">16:13</span>
          </h5>
          <span class="schedule-time__label" style="background-color: #0185d0; color: #FFFFFF;">IMAX 3D </span>
        </span>
      </a>
      <a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659541" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
        <span class="schedule-time__content">
          <h5>
            <span class="schedule-time__start">17:00</span>
            <span class="schedule-time__end">19:13</span>
          </h5>
          <span class="schedule-time__label" style="background-color: #0185d0; color: #FFFFFF;">IMAX 3D </span>
        </span>
      </a>
      <a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659530" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
        <span class="schedule-time__content">
          <h5>
            <span class="schedule-time__start">20:00</span>
            <span class="schedule-time__end">22:13</span>
          </h5>
          <span class="schedule-time__label" style="background-color: #0185d0; color: #FFFFFF;">IMAX 3D </span>
        </span>
      </a>
      <a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659979" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
        <span class="schedule-time__content">
          <h5>
            <span class="schedule-time__start">21:30</span>
            <span class="schedule-time__end">23:43</span>
          </h5>
          <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
        </span>
      </a>
      <a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659531" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
        <span class="schedule-time__content">
          <h5>
            <span class="schedule-time__start">23:00</span>
            <span class="schedule-time__end">01:13</span>
          </h5>
          <span class="schedule-time__label" style="background-color: #0185d0; color: #FFFFFF;">IMAX 3D </span>
        </span>
      </a>
    </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/23220/de-kleine-heks" class="poster" title="De Kleine Heks" data-gtmclick="23220">
      <img alt="De Kleine Heks" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/other/api/filmdepot/v1/movie/download/23449_98349_ps_sd-high.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/23220/de-kleine-heks" title="De Kleine Heks" data-gtmclick="23220">De Kleine Heks</a>
        <ul class="schedule-default__icons">



  <li class="js-tooltip-parental-advisory" data-tooltip="Alle leeftijden">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-al-gray-32.png" alt="Alle leeftijden"/>
  </li>









        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          De kleine heks is vastberaden de beste heks van het bos te worden. Hierdoor rolt ze samen met haar raaf Abraxas van het ene in het andere avontuur! Van zo&#39;n heksje mo&#233;t je wel houden!
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '23220' }, 'name': function () { return 'De Kleine Heks' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660028" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">13:15</span>
      <span class="schedule-time__end">15:13</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/22409/hotel-transsylvanie-3-nederlandse-versie" class="poster" title="Hotel Transsylvani&#235; 3 (Nederlandse Versie)" data-gtmclick="22409">
      <img alt="Hotel Transsylvanië 3 (Nederlandse Versie)" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/other/api/filmdepot/v1/movie/download/19758_92220_ps_sd-high.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/22409/hotel-transsylvanie-3-nederlandse-versie" title="Hotel Transsylvani&#235; 3 (Nederlandse Versie)" data-gtmclick="22409">Hotel Transsylvani&#235; 3 (Nederlandse Versie)</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Mogelijk schadelijk tot 6 jaar">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-6-gray-32.png" alt="Mogelijk schadelijk tot 6 jaar"/>
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst"/>
  </li>


  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld"/>
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          In de nieuwe 3D-animatiefilm Hotel Transsylvani&#235; 3 van Sony Pictures Animation reis je mee met onze favoriete monsterfamilie.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '22409' }, 'name': function () { return 'Hotel Transsylvani&#235; 3 (Nederlandse Versie)' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660042" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">13:00</span>
      <span class="schedule-time__end">14:52</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660012" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">15:00</span>
      <span class="schedule-time__end">16:52</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659966" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">16:15</span>
      <span class="schedule-time__end">18:07</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFC426; color: #000000;">3D </span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/22410/hotel-transylvania-3-originele-versie" class="poster" title="Hotel Transylvania 3 (Originele Versie)" data-gtmclick="22410">
      <img alt="Hotel Transylvania 3 (Originele Versie)" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/other/api/filmdepot/v1/movie/download/19759_99466_ps_sd-high.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/22410/hotel-transylvania-3-originele-versie" title="Hotel Transylvania 3 (Originele Versie)" data-gtmclick="22410">Hotel Transylvania 3 (Originele Versie)</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Mogelijk schadelijk tot 6 jaar">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-6-gray-32.png" alt="Mogelijk schadelijk tot 6 jaar"/>
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst"/>
  </li>


  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld"/>
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          In de nieuwe 3D-animatiefilm Hotel Transylvania 3 van Sony Pictures Animation reis je mee met onze favoriete monsterfamilie.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '22410' }, 'name': function () { return 'Hotel Transylvania 3 (Originele Versie)' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660022" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">18:15</span>
      <span class="schedule-time__end">20:07</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFC426; color: #000000;">3D </span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/24158/ideal-home" class="poster" title="Ideal Home" data-gtmclick="24158">
      <img alt="Ideal Home" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posterhr/Ideal-Home_ps_1_jpg_sd-low.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/24158/ideal-home" title="Ideal Home" data-gtmclick="24158">Ideal Home</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene.">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-12-gray-32.png" alt="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene."/>
  </li>




  <li class="js-tooltip-parental-advisory" data-tooltip="Seks">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-sex-gray-32.png" alt="Seks"/>
  </li>

  <li class="js-tooltip-parental-advisory" data-tooltip="Drugs en/of alcolholmisbruik">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-alcoholdrugabuse-gray-32.png" alt="Drugs en/of alcolholmisbruik"/>
  </li>



  <li class="js-tooltip-parental-advisory" data-tooltip="Grof taalgebruik">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-explicitlanguage-gray-32.png" alt="Grof taalgebruik"/>
  </li>


        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          Ideal Home is een groffe en tegelijk hartverwarmende ode aan het homo-ouderschap.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '24158' }, 'name': function () { return 'Ideal Home' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659995" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">16:30</span>
      <span class="schedule-time__end">18:16</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660014" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">19:45</span>
      <span class="schedule-time__end">21:31</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/21743/incredibles-2-nederlandse-versie" class="poster" title="Incredibles 2 (Nederlandse versie)" data-gtmclick="21743">
      <img alt="Incredibles 2 (Nederlandse versie)" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posterhr/INCR2_015L_G_NLD-NL_70x100.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/21743/incredibles-2-nederlandse-versie" title="Incredibles 2 (Nederlandse versie)" data-gtmclick="21743">Incredibles 2 (Nederlandse versie)</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Mogelijk schadelijk tot 6 jaar">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-6-gray-32.png" alt="Mogelijk schadelijk tot 6 jaar">
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst">
  </li>


  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          De geliefde superhelden-familie is terug in Incredibles 2!
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '21743' }, 'name': function () { return 'Incredibles 2 (Nederlandse versie)' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659963" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">13:30</span>
      <span class="schedule-time__end">15:50</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660043" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">15:15</span>
      <span class="schedule-time__end">17:35</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/21746/incredibles-2-originele-versie" class="poster" title="Incredibles 2 (Originele versie)" data-gtmclick="21746">
      <img alt="Incredibles 2 (Originele versie)" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posterhr/INCR2_015L_G_NLD-NL_70x100.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/21746/incredibles-2-originele-versie" title="Incredibles 2 (Originele versie)" data-gtmclick="21746">Incredibles 2 (Originele versie)</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Mogelijk schadelijk tot 6 jaar">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-6-gray-32.png" alt="Mogelijk schadelijk tot 6 jaar">
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst">
  </li>


  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          De geliefde superhelden-familie is terug in Incredibles 2!
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '21746' }, 'name': function () { return 'Incredibles 2 (Originele versie)' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659977" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">16:00</span>
      <span class="schedule-time__end">18:20</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFC426; color: #000000;">3D </span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/21381/jurassic-world-fallen-kingdom" class="poster" title="Jurassic World: Fallen Kingdom" data-gtmclick="21381">
      <img alt="Jurassic World: Fallen Kingdom" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posterhr/Jurassic-World_-Fallen-Kingdom_ps_1.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/21381/jurassic-world-fallen-kingdom" title="Jurassic World: Fallen Kingdom" data-gtmclick="21381">Jurassic World: Fallen Kingdom</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene.">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-12-gray-32.png" alt="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene.">
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst">
  </li>


  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          Welkom in Jurassic World: Fallen Kingdom! Favoriete personages keren terug in dit 3D actie-spektakel.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '21381' }, 'name': function () { return 'Jurassic World: Fallen Kingdom' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659978" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">18:45</span>
      <span class="schedule-time__end">21:08</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/23544/la-chtite-famille" class="poster" title="La Ch&#39;tite Famille" data-gtmclick="23544">
      <img alt="La Ch&#39;tite Famille" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/other/api/filmdepot/v1/movie/download/23629_96569_ps_sd-high.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/23544/la-chtite-famille" title="La Ch&#39;tite Famille" data-gtmclick="23544">La Ch&#39;tite Famille</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Mogelijk schadelijk tot 9 jaar">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-9-gray-32.png" alt="Mogelijk schadelijk tot 9 jaar">
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst">
  </li>

  <li class="js-tooltip-parental-advisory" data-tooltip="Grof taalgebruik">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-explicitlanguage-gray-32.png" alt="Grof taalgebruik">
  </li>


        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          Het prestigieuze, luxueuze heden en het eenvoudige, plattelandse verleden van een Parijse designer komen keihard met elkaar in botsing wanneer hij zijn geheugen verliest en zich twintig jaar terug in de tijd waant.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '23544' }, 'name': function () { return 'La Ch\u0027tite Famille' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659976" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">13:40</span>
      <span class="schedule-time__end">15:41</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660030" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">20:45</span>
      <span class="schedule-time__end">22:46</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/23130/mamma-mia-here-we-go-again" class="poster" title="Mamma Mia! Here We Go Again" data-gtmclick="23130">
      <img alt="Mamma Mia! Here We Go Again" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posterhr/mammamia2-1sheet-nl-18juli.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/23130/mamma-mia-here-we-go-again" title="Mamma Mia! Here We Go Again" data-gtmclick="23130">Mamma Mia! Here We Go Again</a>
        <ul class="schedule-default__icons">



  <li class="js-tooltip-parental-advisory" data-tooltip="Alle leeftijden">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-al-gray-32.png" alt="Alle leeftijden">
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Grof taalgebruik">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-explicitlanguage-gray-32.png" alt="Grof taalgebruik">
  </li>


        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          Zing, dans, lach en word opnieuw verliefd met het feel-good film event van deze zomer: Mamma Mia! Here We Go Again.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '23130' }, 'name': function () { return 'Mamma Mia! Here We Go Again' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660011" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">12:30</span>
      <span class="schedule-time__end">14:39</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660029" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">15:45</span>
      <span class="schedule-time__end">17:54</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659996" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">18:30</span>
      <span class="schedule-time__end">20:39</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660044" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">20:30</span>
      <span class="schedule-time__end">22:39</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/22416/oceans-8" class="poster" title="Ocean&#39;s 8" data-gtmclick="22416">
      <img alt="Ocean&#39;s 8" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posterhr/oceans8poster1.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/22416/oceans-8" title="Ocean&#39;s 8" data-gtmclick="22416">Ocean&#39;s 8</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Mogelijk schadelijk tot 6 jaar">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-6-gray-32.png" alt="Mogelijk schadelijk tot 6 jaar">
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst">
  </li>


  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          Sandra Bullock, Cate Blanchett, Anne Hathaway, Mindy Kaling, Sarah Paulson, Awkwafina, Rihanna en Helena Bonham Carter vormen een team in de actie-komedie Ocean’s 8.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '22416' }, 'name': function () { return 'Ocean\u0027s 8' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660013" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">17:15</span>
      <span class="schedule-time__end">19:20</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/24132/show-dogs" class="poster" title="Show Dogs" data-gtmclick="24132">
      <img alt="Show Dogs" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/other/api/filmdepot/v1/movie/download/23724_98136_ps_sd-high.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/24132/show-dogs" title="Show Dogs" data-gtmclick="24132">Show Dogs</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Mogelijk schadelijk tot 6 jaar">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-6-gray-32.png" alt="Mogelijk schadelijk tot 6 jaar">
  </li>









  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          Wanneer er plotseling een babypanda uit de dierentuin wordt gestolen, zijn stoere politiehond Max en politieman Frank gedwongen om samen te werken en undercover te gaan tijdens &#233;&#233;n van de meest exclusieve hondenshows van LAS VEGAS.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '24132' }, 'name': function () { return 'Show Dogs' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659994" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">14:15</span>
      <span class="schedule-time__end">16:02</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/23295/sicario-day-of-the-soldado" class="poster" title="Sicario: Day of the Soldado" data-gtmclick="23295">
      <img alt="Sicario: Day of the Soldado" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/other/api/filmdepot/v1/movie/download/23281_98054_ps_sd-high.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/23295/sicario-day-of-the-soldado" title="Sicario: Day of the Soldado" data-gtmclick="23295">Sicario: Day of the Soldado</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Jonger dan 16? Dan geen toegang, ook niet onder begeleiding van een volwassene. Ter controle kan om legitimatie worden gevraagd.">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-16-gray-32.png" alt="Jonger dan 16? Dan geen toegang, ook niet onder begeleiding van een volwassene. Ter controle kan om legitimatie worden gevraagd.">
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst">
  </li>

  <li class="js-tooltip-parental-advisory" data-tooltip="Grof taalgebruik">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-explicitlanguage-gray-32.png" alt="Grof taalgebruik">
  </li>

  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          De drugsoorlog aan de Amerikaans-Mexicaanse grens is ge&#235;scaleerd nu de kartels zijn begonnen met het verhandelen van terroristen over de Amerikaanse grens.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '23295' }, 'name': function () { return 'Sicario: Day of the Soldado' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659967" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">22:45</span>
      <span class="schedule-time__end">01:02</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/22933/skyscraper" class="poster" title="Skyscraper" data-gtmclick="22933">
      <img alt="Skyscraper" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posterhr/SKR_INTL_ADVANCE_1_SHT_NED_NU_IMAX_DOLBY.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/22933/skyscraper" title="Skyscraper" data-gtmclick="22933">Skyscraper</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene.">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-12-gray-32.png" alt="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene.">
  </li>







  <li class="js-tooltip-parental-advisory" data-tooltip="Angst">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-fear-gray-32.png" alt="Angst">
  </li>

  <li class="js-tooltip-parental-advisory" data-tooltip="Grof taalgebruik">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-explicitlanguage-gray-32.png" alt="Grof taalgebruik">
  </li>

  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          Will is een voormalige leider van een FBI gijzelaarsreddingsteam en tevens oorlogsveteraan, die zich nu bezighoudt met het beveiligen van wolkenkrabbers.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '22933' }, 'name': function () { return 'Skyscraper' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659997" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">21:15</span>
      <span class="schedule-time__end">23:13</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2659998" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">23:45</span>
      <span class="schedule-time__end">01:43</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/23105/tag" class="poster" title="Tag" data-gtmclick="23105">
      <img alt="Tag" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/other/api/filmdepot/v1/movie/download/23346_97641_ps_sd-high.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/23105/tag" title="Tag" data-gtmclick="23105">Tag</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene.">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-12-gray-32.png" alt="Jonger dan 12? Dan alleen toegang onder begeleiding van een volwassene.">
  </li>








  <li class="js-tooltip-parental-advisory" data-tooltip="Grof taalgebruik">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-explicitlanguage-gray-32.png" alt="Grof taalgebruik">
  </li>

  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          Elk jaar strijden vijf zeer competitieve vrienden een maand lang in een alles-mag-spelletje genaamd &#39;Tag&#39;. Dit doen ze al sinds de eerste klas. Ze riskeren hun leven, relatie &#233;n baan om elkaar naar de grond te werken met de kreet: “Jij bent hem!”.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '23105' }, 'name': function () { return 'Tag' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660046" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">18:00</span>
      <span class="schedule-time__end">19:56</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660031" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">23:30</span>
      <span class="schedule-time__end">01:26</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>

<div class="schedule__section">
  <figure class="schedule__figure">
    <a href="/film/22869/the-first-purge" class="poster" title="The First Purge" data-gtmclick="22869">
      <img alt="The First Purge" src="https://media.pathe.nl/nocropthumb/180x254/gfx_content/posters/The-First-Purge_ps_1_jpg_sd-low.jpg" />
    </a>
  </figure>
  <figcaption class="schedule__article">
      <h4>
        <a href="/film/22869/the-first-purge" title="The First Purge" data-gtmclick="22869">The First Purge</a>
        <ul class="schedule-default__icons">


  <li class="js-tooltip-parental-advisory" data-tooltip="Jonger dan 16? Dan geen toegang, ook niet onder begeleiding van een volwassene. Ter controle kan om legitimatie worden gevraagd.">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-16-gray-32.png" alt="Jonger dan 16? Dan geen toegang, ook niet onder begeleiding van een volwassene. Ter controle kan om legitimatie worden gevraagd.">
  </li>








  <li class="js-tooltip-parental-advisory" data-tooltip="Grof taalgebruik">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-explicitlanguage-gray-32.png" alt="Grof taalgebruik">
  </li>

  <li class="js-tooltip-parental-advisory" data-tooltip="Geweld">
    <img src="/assets/img/icons/kijkwijzer/kijkwijzer-violence-gray-32.png" alt="Geweld">
  </li>

        </ul>
      </h4>
      <div class="schedule__synopsis">
        <p>
          In The First Purge gaan we terug naar het begin en zien we de allereerste avond waarop er gePurged mag worden: een periode van 12 uur waarin er wetteloosheid van kracht is, bedoeld om het jaarlijkse misdaadcijfer onder de &#233;&#233;n procent te krijgen.
        </p>
      </div>
    </figcaption>
    <script style="display:none">
      gtmPush('_MovieSchedule', { 'id': function () { return '22869' }, 'name': function () { return 'The First Purge' }, 'list': function () { return _gtmPageName } });
    </script>

  <div class="schedule__wrapper">
      <p class="schedule__location">Path&#233; Tilburg</p>
      <div class="schedule__container js-schedule-block">



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660015" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">22:00</span>
      <span class="schedule-time__end">23:58</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>



<a href="javascript:;" rel="nofollow" data-href="/tickets/start/2660045" data-offline="False" data-soldout="False" data-doublesize="0" class="schedule-time js-schedule-item">
  <span class="schedule-time__content">
    <h5>
      <span class="schedule-time__start">23:15</span>
      <span class="schedule-time__end">01:13</span>
    </h5>
    <span class="schedule-time__label" style="background-color: #FFFFFF; color: #000000;">2D</span>
  </span>
</a>
      </div>
  </div>
</div>
  ''';
  void parsePathe() {
    //Prepend wrapping div around loose items.
    source = '<div>' + source + '</div>';
    //Remove buggy img tags (not closed well) completely; we don't use them (yet).
    source = source.replaceAll(new RegExp(r'<img .*>'), '');

    xml.XmlDocument document = xml.parse(source);

    //Detect individual movies (wrapper)
    var list = document.findElements('div').first
        .findElements('div')
        .where((e) => "schedule__section" == e.getAttribute('class'))
        .toList(growable: false);

    print('Found ${list.length} movies.');

    list.forEach((item) {
      //Parse title
      var title = item.findElements('figcaption').first
          ?.findAllElements('h4')?.first
      ?.findAllElements('a')?.first?.text?.trim();

      if (title != null)
        print('Movie title: "$title"');

      //Detect individual movies (wrapper)
      var wrapper = item.findElements('div')
          .firstWhere((e) => "schedule__wrapper" == e.getAttribute('class'),
      orElse: () => null);

      if (wrapper != null) {
        //Detect list of times (schedule-block)
        var timesList = wrapper.findElements('div')
            .firstWhere((e) =>
        "schedule__container js-schedule-block" == e.getAttribute('class'),
            orElse: () => null);

        if (timesList != null) {
          var times = timesList.findElements('a');

          print('Movie is shown ${times.length} times.');

          times.forEach((timeSpan) {
            var startTime = timeSpan.findAllElements('span')
                .firstWhere((e) =>
            "schedule-time__start" == e.getAttribute('class'),
                orElse: () => null);
            if (startTime != null) {
              print('  Start: ' + startTime.text);
            }
            var endTime = timeSpan.findAllElements('span')
                .firstWhere((e) =>
            "schedule-time__end" == e.getAttribute('class'),
                orElse: () => null);
          });
        }
      }
    });
  }
}