.class public Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;
.super Lcom/ogaclejapan/smarttablayout/utils/PagerItem;
.source "ViewPagerItem.java"


# instance fields
.field private final resource:I


# direct methods
.method protected constructor <init>(Ljava/lang/CharSequence;FI)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "width"    # F
    .param p3, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;-><init>(Ljava/lang/CharSequence;F)V

    .line 29
    iput p3, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->resource:I

    .line 30
    return-void
.end method

.method public static of(Ljava/lang/CharSequence;FI)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "width"    # F
    .param p2, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 37
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    invoke-direct {v0, p0, p1, p2}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;-><init>(Ljava/lang/CharSequence;FI)V

    return-object v0
.end method

.method public static of(Ljava/lang/CharSequence;I)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "resource"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->of(Ljava/lang/CharSequence;FI)Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initiate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/utils/ViewPagerItem;->resource:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
