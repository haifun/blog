<!-- Post -->
<article class="post">
    <div class="post-cover"><img src="{{ post_img( post.cover|default(theme.post.cover) ) }}" alt="{{ post.title }}" /></div>
    <header class="post-hd">
        {{seachData()}}
        <h1 class="post-tit">{{ post.title }}</h1>
        <div class="post-meta">
            by <a target="_blank" href="https://github.com/{{ author.github_name }}" class="post-author">{{ author.nick|default(author.github_name) }}</a> on <span>{{ date(post.date) }}</span>
        </div>
        {% if post.subtitle %}
        <p class="post-subtit" style="display:none;"><i class="fa fa-quote-left"></i>{{ post.subtitle }}</p>
        {% endif %}
        <span style="display:none;" id="busuanzi_value_page_pv"></span>
    </header>
    <div class="post-content">
        {{ page_anchor(post.content) }}

        <div class="post-tags" style="display: none">
            {% if page.tags.length %}
                {% for tag in page.tags %}
                    <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
                {% endfor %}
            {% endif %}
        </div>

        <div class="post-categories" style="display: none">
            {% if page.categories.length %}
                {% for cate in page.categories %}
                    <a href="{{ url_for(cate.path) }}">{{ cate.name }}</a>
                {% endfor %}
            {% endif %}
        </div>


        <div class="post-revision">
            <i class="fa fa-clock-o"></i> <time class="post-updated" datetime="{{ date_xml(post.updated) }}">{{ __('post.last_updated', full_date(post.updated)) }}</time>
         </div>

    </div>

    {% include 'prevnext.swig' %}


</article>