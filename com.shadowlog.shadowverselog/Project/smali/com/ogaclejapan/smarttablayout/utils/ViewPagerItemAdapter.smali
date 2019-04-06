.class public Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerItemAdapter.java"


# instance fields
.field private final holder:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inflater:Landroid/view/LayoutInflater;

.field private final pages:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;


# direct methods
.method public constructor <init>(Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;)V
    .locals 2
    .param p1, "pages"    # Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    .line 34
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    .line 35
    invoke-virtual {p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 54
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->size()I

    move-result v0

    return v0
.end method

.method public getPage(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 74
    .local v0, "weakRefItem":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->getWidth()F

    move-result v0

    return v0
.end method

.method protected getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItems;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p2}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    move-result-object v1

    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->initiate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItemAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 48
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 59
    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
