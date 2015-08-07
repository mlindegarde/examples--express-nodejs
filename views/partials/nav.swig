<div class="fixed">
    <nav class="top-bar" data-topbar role="navigation" >
        <ul class="title-area">
            <li class="name">
                <h1><a href="/">Family Recipe</a></h1>
            </li>

            <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
        </ul>

        <section class="top-bar-section">
            <ul class="left">
                <li {% if title == "Recipes" %} class="active" {% endif %}><a href="/recipes">Recipes</a></li>
                <li {% if title == "Contact" %} class="active" {% endif %}><a href="/contact">Contact</a></li>
                <li {% if title == "About" %} class="active" {% endif %}><a href="/about">About</a></li>
            </ul>
        </section>
    </nav>
</div>