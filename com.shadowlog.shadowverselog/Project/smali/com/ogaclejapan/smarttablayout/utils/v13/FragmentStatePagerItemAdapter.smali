.class public Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "FragmentStatePagerItemAdapter.java"


# instance fields
.field private final holder:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pages:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;)V
    .locals 2
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "pages"    # Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 33
    iput-object p2, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    .line 34
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p2}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    .line 35
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v13/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->instantiate(Landroid/content/Context;I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getPage(I)Landroid/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 74
    .local v0, "weakRefItem":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Fragment;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

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
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->getWidth()F

    move-result v0

    return v0
.end method

.method protected getPagerItem(I)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->pages:Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItems;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentStatePagerItemAdapter;->holder:Landroid/support/v4/util/SparseArrayCompat;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    check-cast v1, Landroid/app/Fragment;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 53
    :cond_0
    return-object v0
.end method
