<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
<title>NovaMart — The Catalog</title>
<link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@500;700;900&family=Work+Sans:wght@400;500;600;700&family=Space+Mono:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
  :root{
    --paper:#EAE6DC;
    --paper-dim:#DDD6C6;
    --ink:#17181A;
    --ink-soft:#5B5A53;
    --line:#C7BFAC;
    --accent:#FF4E1F;
    --accent-teal:#0E5257;
    --success:#3F7D58;
    --radius:2px;
  }
  body.night{
    --paper:#151617;
    --paper-dim:#1E1F20;
    --ink:#EDE8DC;
    --ink-soft:#A6A196;
    --line:#38393A;
    --accent:#FF6B3D;
    --accent-teal:#59C4C7;
  }
  *{margin:0;padding:0;box-sizing:border-box;}
  body{
    background:var(--paper);
    color:var(--ink);
    font-family:'Work Sans',sans-serif;
    transition:background .3s ease,color .3s ease;
  }
  .wrap{max-width:1240px;margin:0 auto;padding:0 32px;}
  h1,h2,h3,.display{font-family:'Big Shoulders Display',sans-serif;font-weight:900;text-transform:none;letter-spacing:-0.01em;}
  .mono{font-family:'Space Mono',monospace;}
  a{color:inherit;text-decoration:none;}
  button{font-family:inherit;cursor:pointer;background:none;border:none;color:inherit;}
  hr.rule{border:none;border-top:1px solid var(--line);}

  /* ---------- header ---------- */
  header{
    position:sticky;top:0;z-index:100;
    background:var(--paper);
    border-bottom:1px solid var(--line);
  }
  .head-row{display:flex;align-items:center;justify-content:space-between;padding:20px 0;gap:24px;}
  .wordmark{font-family:'Big Shoulders Display',sans-serif;font-weight:900;font-size:30px;line-height:1;}
  .wordmark span{color:var(--accent);}
  .catalog-nav{display:flex;gap:0;align-items:center;border-left:1px solid var(--line);}
  .catalog-nav a{
    padding:8px 18px;font-size:14px;font-weight:600;border-right:1px solid var(--line);color:var(--ink-soft);
  }
  .catalog-nav a:hover, .catalog-nav a.active{color:var(--ink);background:var(--paper-dim);}
  .head-tools{display:flex;align-items:center;gap:14px;}
  .search-field{
    display:flex;align-items:center;gap:10px;border:1px solid var(--line);padding:8px 14px;min-width:220px;
  }
  .search-field input{background:transparent;border:none;outline:none;color:var(--ink);font-size:14px;width:100%;font-family:'Work Sans',sans-serif;}
  .tool-btn{
    width:38px;height:38px;display:flex;align-items:center;justify-content:center;border:1px solid var(--line);
  }
  .tool-btn:hover{background:var(--ink);color:var(--paper);}
  .cart-wrap{position:relative;}
  .cart-count{
    position:absolute;top:-8px;right:-8px;background:var(--accent);color:#fff;font-family:'Space Mono',monospace;
    font-size:10px;font-weight:700;width:18px;height:18px;display:flex;align-items:center;justify-content:center;border-radius:50%;
  }

  /* ---------- hero ---------- */
  .hero{border-bottom:1px solid var(--line);padding:64px 0 0;}
  .hero-top{display:flex;justify-content:space-between;align-items:flex-start;gap:40px;}
  .hero-eyebrow{font-family:'Space Mono',monospace;font-size:13px;color:var(--ink-soft);}
  .hero-issue{font-family:'Space Mono',monospace;font-size:13px;text-align:right;color:var(--ink-soft);}
  .hero-grid{display:grid;grid-template-columns:1.1fr 0.9fr;gap:40px;align-items:end;margin-top:20px;}
  .hero-headline{font-size:96px;line-height:0.92;}
  .hero-sub{margin-top:22px;max-width:420px;color:var(--ink-soft);font-size:17px;line-height:1.5;}
  .hero-actions{display:flex;gap:14px;margin-top:34px;}
  .btn-solid{
    background:var(--ink);color:var(--paper);padding:14px 26px;font-weight:600;font-size:14px;border:1px solid var(--ink);
  }
  .btn-solid:hover{background:var(--accent);border-color:var(--accent);color:#fff;}
  .btn-line{
    padding:14px 26px;font-weight:600;font-size:14px;border:1px solid var(--ink);
  }
  .btn-line:hover{background:var(--paper-dim);}
  .hero-figure{position:relative;}
  .hero-figure img{width:100%;height:420px;object-fit:cover;border:1px solid var(--line);}
  .price-sticker{
    position:absolute;bottom:-18px;left:-18px;background:var(--accent);color:#fff;transform:rotate(-6deg);
    padding:14px 18px;font-family:'Space Mono',monospace;font-weight:700;box-shadow:4px 4px 0 var(--ink);
  }
  .price-sticker small{display:block;font-size:10px;font-weight:400;opacity:.85;}

  /* ---------- section headings ---------- */
  .sec-head{display:flex;justify-content:space-between;align-items:baseline;margin:72px 0 28px;border-bottom:1px solid var(--line);padding-bottom:16px;}
  .sec-head h2{font-size:34px;}
  .sec-head p{color:var(--ink-soft);font-size:14px;}

  /* ---------- categories ---------- */
  .cat-strip{display:grid;grid-template-columns:repeat(6,1fr);border-top:1px solid var(--line);border-left:1px solid var(--line);}
  .cat-tab{
    border-right:1px solid var(--line);border-bottom:1px solid var(--line);padding:26px 16px;text-align:left;position:relative;
    transition:background .2s ease,color .2s ease;
  }
  .cat-tab:hover{background:var(--ink);color:var(--paper);}
  .cat-num{font-family:'Space Mono',monospace;font-size:12px;color:var(--accent);}
  .cat-tab:hover .cat-num{color:var(--accent);}
  .cat-icon{font-size:22px;margin:14px 0 10px;}
  .cat-name{font-weight:600;font-size:14px;}

  /* ---------- products ---------- */
  .product-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:1px;background:var(--line);border:1px solid var(--line);}
  .product-card{background:var(--paper);padding:0;position:relative;display:flex;flex-direction:column;}
  .p-badge{
    position:absolute;top:14px;left:14px;background:var(--ink);color:var(--paper);font-family:'Space Mono',monospace;
    font-size:10px;padding:4px 8px;z-index:2;
  }
  .p-img-wrap{overflow:hidden;height:230px;border-bottom:1px solid var(--line);}
  .p-img-wrap img{width:100%;height:100%;object-fit:cover;transition:transform .5s ease;}
  .product-card:hover .p-img-wrap img{transform:scale(1.04);}
  .p-body{padding:20px;display:flex;flex-direction:column;gap:10px;flex:1;}
  .p-title{font-weight:600;font-size:16px;}
  .p-meta-row{display:flex;justify-content:space-between;align-items:baseline;}
  .p-sku{font-family:'Space Mono',monospace;font-size:11px;color:var(--ink-soft);}
  .p-rating{font-size:12px;color:var(--ink-soft);}
  .p-rating i{color:var(--accent);}
  .p-price-row{display:flex;align-items:baseline;gap:8px;margin-top:auto;}
  .p-price{font-family:'Space Mono',monospace;font-weight:700;font-size:20px;}
  .p-old{font-family:'Space Mono',monospace;font-size:13px;color:var(--ink-soft);text-decoration:line-through;}
  .p-actions{display:flex;gap:8px;margin-top:6px;}
  .btn-add{flex:1;border:1px solid var(--ink);padding:10px;font-size:13px;font-weight:600;}
  .btn-add:hover{background:var(--ink);color:var(--paper);}
  .btn-fav{width:40px;border:1px solid var(--line);}
  .btn-fav:hover{border-color:var(--ink);}

  /* ---------- flash sale ---------- */
  .flash{background:var(--ink);color:var(--paper);margin-top:72px;padding:56px 0;position:relative;overflow:hidden;}
  .flash-grid{display:grid;grid-template-columns:1fr 1fr;gap:48px;align-items:center;}
  .stamp{
    display:inline-block;border:2px solid var(--accent);color:var(--accent);font-family:'Space Mono',monospace;
    font-size:12px;padding:6px 14px;transform:rotate(-4deg);margin-bottom:18px;
  }
  .flash h2{font-size:44px;line-height:1;}
  .flash p.desc{color:#C9C6BC;margin:14px 0 26px;max-width:380px;}
  .ticket-row{display:flex;gap:0;border:1px solid #3A3B3C;width:max-content;margin-bottom:28px;}
  .ticket{
    font-family:'Space Mono',monospace;text-align:center;padding:14px 20px;border-right:1px solid #3A3B3C;
  }
  .ticket:last-child{border-right:none;}
  .ticket .num{font-size:30px;font-weight:700;color:var(--accent);}
  .ticket .lbl{font-size:10px;color:#8B8A85;margin-top:4px;}
  .flash-price{font-family:'Space Mono',monospace;font-size:34px;font-weight:700;}
  .flash-price .old{font-size:18px;color:#8B8A85;text-decoration:line-through;margin-left:10px;}
  .flash-img{position:relative;}
  .flash-img img{
    width:100%;height:340px;object-fit:cover;
    clip-path:polygon(0 0,100% 0,100% 92%,95% 100%,90% 92%,85% 100%,80% 92%,75% 100%,70% 92%,65% 100%,60% 92%,55% 100%,50% 92%,45% 100%,40% 92%,35% 100%,30% 92%,25% 100%,20% 92%,15% 100%,10% 92%,5% 100%,0 92%);
  }

  /* ---------- testimonials ---------- */
  .testi-strip{display:flex;gap:0;overflow-x:auto;border-top:1px solid var(--line);border-left:1px solid var(--line);}
  .testi-card{
    min-width:340px;border-right:1px solid var(--line);border-bottom:1px solid var(--line);padding:28px;position:relative;
  }
  .testi-card::after{
    content:'';position:absolute;top:0;right:0;width:0;height:0;
    border-style:solid;border-width:0 22px 22px 0;border-color:transparent var(--paper-dim) transparent transparent;
  }
  .testi-quote{font-family:'Big Shoulders Display',sans-serif;font-size:40px;color:var(--line);line-height:1;}
  .testi-text{margin:12px 0 18px;line-height:1.5;font-size:15px;}
  .testi-person{display:flex;align-items:center;gap:12px;}
  .testi-person img{width:38px;height:38px;object-fit:cover;border-radius:50%;}
  .testi-name{font-weight:600;font-size:14px;}
  .testi-rating{font-size:12px;color:var(--ink-soft);}

  /* ---------- newsletter ---------- */
  .subscribe{
    margin:72px 0;border:2px dashed var(--line);padding:48px 40px;text-align:center;position:relative;
  }
  .subscribe .scissors{position:absolute;top:-14px;left:24px;background:var(--paper);padding:0 8px;color:var(--ink-soft);}
  .subscribe h3{font-size:32px;}
  .subscribe p{color:var(--ink-soft);margin-top:10px;}
  .sub-form{display:flex;justify-content:center;gap:0;margin-top:26px;max-width:460px;margin-left:auto;margin-right:auto;border:1px solid var(--ink);}
  .sub-form input{
    flex:1;border:none;background:transparent;padding:14px 18px;font-family:'Space Mono',monospace;font-size:14px;color:var(--ink);outline:none;
  }
  .sub-form button{background:var(--ink);color:var(--paper);padding:14px 24px;font-weight:600;font-size:14px;}
  .sub-form button:hover{background:var(--accent);}
  .sub-msg{margin-top:14px;font-size:13px;font-family:'Space Mono',monospace;}

  /* ---------- footer ---------- */
  footer{border-top:1px solid var(--line);padding:44px 0 30px;}
  .foot-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:32px;}
  .foot-grid h4{font-size:13px;font-weight:700;margin-bottom:12px;}
  .foot-grid p, .foot-grid a{display:block;color:var(--ink-soft);font-size:14px;line-height:2;}
  .colophon{margin-top:40px;padding-top:20px;border-top:1px solid var(--line);display:flex;justify-content:space-between;font-family:'Space Mono',monospace;font-size:12px;color:var(--ink-soft);}

  /* toast */
  .toast{
    position:fixed;bottom:24px;left:50%;transform:translateX(-50%);background:var(--ink);color:var(--paper);
    padding:12px 22px;font-size:14px;font-weight:600;z-index:999;border:1px solid var(--accent);
  }

  @media (max-width:980px){
    .catalog-nav{display:none;}
    .hero-headline{font-size:56px;}
    .hero-grid{grid-template-columns:1fr;}
    .product-grid{grid-template-columns:repeat(2,1fr);}
    .cat-strip{grid-template-columns:repeat(3,1fr);}
    .foot-grid{grid-template-columns:1fr 1fr;}
  }
  @media (max-width:600px){
    .search-field{display:none;}
    .product-grid{grid-template-columns:1fr;}
    .cat-strip{grid-template-columns:repeat(2,1fr);}
    .flash-grid{grid-template-columns:1fr;}
    .foot-grid{grid-template-columns:1fr;}
  }
</style>
</head>
<body>

<header>
  <div class="wrap head-row">
    <div class="wordmark">NOVA<span>MART</span></div>
    <nav class="catalog-nav">
      <a href="#" data-nav="home" class="active">Home</a>
      <a href="#" data-nav="shop">Shop</a>
      <a href="#" data-nav="deals">Deals</a>
      <a href="#" data-nav="insights">Insights</a>
    </nav>
    <div class="head-tools">
      <div class="search-field">
        <i class="fas fa-search" style="color:var(--ink-soft);font-size:13px;"></i>
        <input type="text" id="globalSearch" placeholder="Search the catalog…">
      </div>
      <button class="tool-btn" id="themeToggle"><i class="fas fa-moon"></i></button>
      <button class="tool-btn"><i class="far fa-heart"></i></button>
      <button class="tool-btn cart-wrap" id="cartIconBtn">
        <i class="fas fa-bag-shopping"></i>
        <span class="cart-count" id="cartCountDisplay">0</span>
      </button>
    </div>
  </div>
</header>

<main class="wrap">

  <section class="hero">
    <div class="hero-top">
      <div class="hero-eyebrow">Fall drop / vol. 04</div>
      <div class="hero-issue">Curated goods<br>for everyday use</div>
    </div>
    <div class="hero-grid">
      <div>
        <h1 class="hero-headline">Objects<br>worth<br>owning.</h1>
        <p class="hero-sub">Six categories, hand-checked for build quality and everyday usefulness. New pieces added weekly, nothing kept just to fill a shelf.</p>
        <div class="hero-actions">
          <button class="btn-solid" id="shopNowHero">Browse the catalog</button>
          <button class="btn-line" id="exploreDealsHero">See this week's deal</button>
        </div>
      </div>
      <div class="hero-figure">
        <img src="https://images.unsplash.com/photo-1518444065439-e933c06ce9cd?auto=format&fit=crop&w=800&q=80" alt="Featured product">
        <div class="price-sticker">from $379<small>this week only</small></div>
      </div>
    </div>
  </section>

  <div class="sec-head">
    <h2>Shop by category</h2>
    <p>Six aisles, no filler</p>
  </div>
  <div class="cat-strip" id="categoryGrid"></div>

  <div class="sec-head" id="productsSection">
    <h2>Trending now</h2>
    <p>Most added to cart this week</p>
  </div>
  <div class="product-grid" id="productGrid"></div>

  <div id="dealsSection">
    <div class="flash">
      <div class="wrap flash-grid">
        <div>
          <div class="stamp">Limited run</div>
          <h2>Flash sale on<br>the M3 Pro.</h2>
          <p class="desc">One bundle, twenty percent off, gone when the timer hits zero. No rain checks.</p>
          <div class="ticket-row" id="countdownTimer">
            <div class="ticket"><div class="num" id="days">00</div><div class="lbl">days</div></div>
            <div class="ticket"><div class="num" id="hours">00</div><div class="lbl">hours</div></div>
            <div class="ticket"><div class="num" id="minutes">00</div><div class="lbl">mins</div></div>
            <div class="ticket"><div class="num" id="seconds">00</div><div class="lbl">secs</div></div>
          </div>
          <div class="flash-price">$1,299 <span class="old">$1,699</span></div>
          <button class="btn-solid" id="flashDealBtn" style="margin-top:24px;">Claim this deal</button>
        </div>
        <div class="flash-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Pro">
        </div>
      </div>
    </div>
  </div>

  <div class="sec-head">
    <h2>What buyers say</h2>
    <p>Unedited, straight from order feedback</p>
  </div>
  <div class="testi-strip" id="testimonialList"></div>

  <div class="subscribe">
    <span class="scissors"><i class="fas fa-scissors"></i></span>
    <h3>Get next week's drop first</h3>
    <p>One email, Thursdays, no spam — unsubscribe from the same link any time.</p>
    <form id="newsletterFormModern" class="sub-form">
      <input type="email" id="newsEmail" placeholder="you@example.com" required>
      <button type="submit">Subscribe</button>
    </form>
    <div id="newsletterMsgModern" class="sub-msg"></div>
  </div>

</main>

<footer>
  <div class="wrap foot-grid">
    <div>
      <div class="wordmark" style="font-size:22px;">NOVA<span>MART</span></div>
      <p style="max-width:260px;margin-top:12px;">A small catalog of things we'd actually buy ourselves. Updated every week.</p>
    </div>
    <div><h4>Explore</h4><a href="#">About</a><a href="#">Careers</a><a href="#">Sustainability</a></div>
    <div><h4>Support</h4><a href="#">Help center</a><a href="#">Returns</a><a href="#">Contact</a></div>
    <div><h4>Follow</h4><a href="#">Instagram</a><a href="#">X</a><a href="#">Pinterest</a></div>
  </div>
  <div class="wrap colophon">
    <span>NovaMart Catalog — Vol. 04</span>
    <span>© 2026, printed digitally</span>
  </div>
</footer>

<script>
  const CATEGORIES = [
    { id:"audio", name:"Audio & Hi-Fi", icon:"fa-headphones" },
    { id:"wearables", name:"Wearables", icon:"fa-stopwatch" },
    { id:"gaming", name:"Gaming Gear", icon:"fa-gamepad" },
    { id:"fashion", name:"Streetwear", icon:"fa-vest" },
    { id:"accessories", name:"Luxury Acc.", icon:"fa-gem" },
    { id:"smart-home", name:"Smart Home", icon:"fa-microchip" }
  ];

  const PRODUCTS = [
    { id:101, title:"Sony WH-1000XM6", sku:"AUD-101", price:399, oldPrice:499, rating:5, reviews:324, img:"https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category:"audio", badge:"Best seller" },
    { id:102, title:"Apple Watch Ultra 2", sku:"WBL-102", price:749, oldPrice:799, rating:5, reviews:512, img:"https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=600&q=80", category:"wearables", badge:"New" },
    { id:103, title:"Razer Blade 16", sku:"GAM-103", price:2799, oldPrice:3199, rating:4.8, reviews:210, img:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80", category:"gaming" },
    { id:104, title:"Off-White Hoodie", sku:"FSH-104", price:420, oldPrice:650, rating:4.7, reviews:89, img:"https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category:"fashion", badge:"Limited" },
    { id:105, title:"Dyson V15 Detect", sku:"HOM-105", price:599, oldPrice:749, rating:4.9, reviews:178, img:"https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=600&q=80", category:"smart-home" },
    { id:106, title:"Bose QC Ultra", sku:"AUD-106", price:379, oldPrice:429, rating:4.9, reviews:267, img:"https://images.unsplash.com/photo-1583394838336-acd977736f90?auto=format&fit=crop&w=600&q=80", category:"audio" }
  ];

  let cartCount = 0;

  const categoryGrid = document.getElementById('categoryGrid');
  const productGrid = document.getElementById('productGrid');
  const cartCountSpan = document.getElementById('cartCountDisplay');
  const searchInput = document.getElementById('globalSearch');

  function renderCategories(){
    categoryGrid.innerHTML = CATEGORIES.map((cat, i) => `
      <button class="cat-tab" data-cat="${cat.name}">
        <div class="cat-num">${String(i+1).padStart(2,'0')}</div>
        <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
        <div class="cat-name">${cat.name}</div>
      </button>
    `).join('');
    document.querySelectorAll('.cat-tab').forEach(tab => {
      tab.addEventListener('click', () => {
        const catName = tab.getAttribute('data-cat');
        searchInput.value = catName;
        filterProducts(catName);
        document.getElementById('productsSection').scrollIntoView({ behavior:'smooth' });
      });
    });
  }

  function renderProducts(list){
    productGrid.innerHTML = list.map(p => `
      <div class="product-card">
        ${p.badge ? `<div class="p-badge">${p.badge}</div>` : ''}
        <div class="p-img-wrap"><img src="${p.img}" alt="${p.title}" loading="lazy"></div>
        <div class="p-body">
          <div class="p-title">${p.title}</div>
          <div class="p-meta-row">
            <span class="p-sku">${p.sku}</span>
            <span class="p-rating"><i class="fas fa-star"></i> ${p.rating} (${p.reviews})</span>
          </div>
          <div class="p-price-row">
            <span class="p-price">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="p-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
          </div>
          <div class="p-actions">
            <button class="btn-add" data-id="${p.id}">Add to cart</button>
            <button class="btn-fav"><i class="far fa-heart"></i></button>
          </div>
        </div>
      </div>
    `).join('');
    document.querySelectorAll('.btn-add[data-id]').forEach(btn => {
      btn.addEventListener('click', e => {
        e.stopPropagation();
        addToCartById(parseInt(btn.dataset.id));
      });
    });
  }

  function addToCartById(id){
    const product = PRODUCTS.find(p => p.id === id);
    if(!product) return;
    cartCount++;
    cartCountSpan.innerText = cartCount;
    const targetBtn = document.querySelector(`.btn-add[data-id="${id}"]`);
    if(targetBtn){
      const original = targetBtn.innerText;
      targetBtn.innerText = 'Added';
      setTimeout(() => { targetBtn.innerText = original; }, 1200);
    }
    showToast(`${product.title} — added to cart`);
  }

  function showToast(msg){
    const toast = document.createElement('div');
    toast.className = 'toast';
    toast.innerText = msg;
    document.body.appendChild(toast);
    setTimeout(() => toast.remove(), 2000);
  }

  function filterProducts(query){
    const q = query.trim().toLowerCase();
    if(!q){ renderProducts(PRODUCTS); return; }
    renderProducts(PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q)));
  }

  function startCountdown(){
    const target = new Date();
    target.setDate(target.getDate() + 2);
    target.setHours(target.getHours() + 5);
    function update(){
      const diff = target - new Date();
      const els = ['days','hours','minutes','seconds'];
      if(diff <= 0){ els.forEach(id => document.getElementById(id).innerText = '00'); return; }
      const d = Math.floor(diff/(1000*60*60*24));
      const h = Math.floor((diff/(1000*60*60))%24);
      const m = Math.floor((diff/(1000*60))%60);
      const s = Math.floor((diff/1000)%60);
      document.getElementById('days').innerText = String(d).padStart(2,'0');
      document.getElementById('hours').innerText = String(h).padStart(2,'0');
      document.getElementById('minutes').innerText = String(m).padStart(2,'0');
      document.getElementById('seconds').innerText = String(s).padStart(2,'0');
    }
    update();
    setInterval(update, 1000);
  }

  const testimonialsData = [
    { name:"Sophia Chen", text:"The build quality on everything I've ordered has been better than I expected for the price.", rating:5, avatar:"https://randomuser.me/api/portraits/women/68.jpg" },
    { name:"James Walker", text:"Caught the flash sale on the MacBook and it shipped the same afternoon.", rating:5, avatar:"https://randomuser.me/api/portraits/men/32.jpg" },
    { name:"Elena Rodriguez", text:"Support answered in minutes when my order needed a size swap.", rating:4.9, avatar:"https://randomuser.me/api/portraits/women/44.jpg" }
  ];

  function renderTestimonials(){
    document.getElementById('testimonialList').innerHTML = testimonialsData.map(t => `
      <div class="testi-card">
        <div class="testi-quote">"</div>
        <p class="testi-text">${t.text}</p>
        <div class="testi-person">
          <img src="${t.avatar}" alt="${t.name}">
          <div>
            <div class="testi-name">${t.name}</div>
            <div class="testi-rating">${t.rating} / 5</div>
          </div>
        </div>
      </div>
    `).join('');
  }

  document.getElementById('themeToggle').addEventListener('click', () => {
    document.body.classList.toggle('night');
    const icon = document.querySelector('#themeToggle i');
    if(document.body.classList.contains('night')) icon.classList.replace('fa-moon','fa-sun');
    else icon.classList.replace('fa-sun','fa-moon');
  });

  const newsletterForm = document.getElementById('newsletterFormModern');
  const newsMsg = document.getElementById('newsletterMsgModern');
  newsletterForm.addEventListener('submit', e => {
    e.preventDefault();
    const email = document.getElementById('newsEmail').value.trim();
    if(!email.includes('@')){
      newsMsg.style.color = 'var(--accent)';
      newsMsg.innerText = 'Enter a valid email';
      return;
    }
    newsMsg.style.color = 'var(--success)';
    newsMsg.innerText = `Subscribed — confirmation sent to ${email}`;
    document.getElementById('newsEmail').value = '';
    setTimeout(() => newsMsg.innerText = '', 3000);
  });

  document.getElementById('flashDealBtn').addEventListener('click', () => {
    cartCount++;
    cartCountSpan.innerText = cartCount;
    showToast('MacBook Pro M3 — added to cart');
  });
  document.getElementById('shopNowHero').addEventListener('click', () => document.getElementById('productsSection').scrollIntoView({ behavior:'smooth' }));
  document.getElementById('exploreDealsHero').addEventListener('click', () => document.getElementById('dealsSection').scrollIntoView({ behavior:'smooth' }));

  searchInput.addEventListener('input', e => filterProducts(e.target.value));
  searchInput.addEventListener('keydown', e => { if(e.key === 'Enter') filterProducts(e.target.value); });

  document.getElementById('cartIconBtn').addEventListener('click', () => showToast(`Cart has ${cartCount} item(s)`));

  renderCategories();
  renderProducts(PRODUCTS);
  startCountdown();
  renderTestimonials();
</script>
</body>
</html>
