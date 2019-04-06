.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabProvider"
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final tabViewLayoutId:I

.field private final tabViewTextViewId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I
    .param p3, "textViewId"    # I

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->inflater:Landroid/view/LayoutInflater;

    .line 560
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->tabViewLayoutId:I

    .line 561
    iput p3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->tabViewTextViewId:I

    .line 562
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IILcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;

    .prologue
    .line 552
    invoke-direct {p0, p1, p2, p3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public createTabView(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v5, -0x1

    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "tabView":Landroid/view/View;
    const/4 v0, 0x0

    .line 569
    .local v0, "tabTitleView":Landroid/widget/TextView;
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->tabViewLayoutId:I

    if-eq v2, v5, :cond_0

    .line 570
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->tabViewLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 573
    :cond_0
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->tabViewTextViewId:I

    if-eq v2, v5, :cond_1

    if-eqz v1, :cond_1

    .line 574
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;->tabViewTextViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "tabTitleView":Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 577
    .restart local v0    # "tabTitleView":Landroid/widget/TextView;
    :cond_1
    if-nez v0, :cond_2

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 578
    check-cast v0, Landroid/widget/TextView;

    .line 581
    :cond_2
    if-eqz v0, :cond_3

    .line 582
    invoke-virtual {p3, p2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :cond_3
    return-object v1
.end method
