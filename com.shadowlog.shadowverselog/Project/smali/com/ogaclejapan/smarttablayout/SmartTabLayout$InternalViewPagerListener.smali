.class Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SmartTabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private scrollState:I

.field final synthetic this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;


# direct methods
.method private constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    .param p2, "x1"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 612
    iput p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->scrollState:I

    .line 614
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 617
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 596
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v0

    .line 597
    .local v0, "tabStripChildCount":I
    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v1, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v1, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->onViewPagerPageChanged(IF)V

    .line 603
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$300(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;IF)V

    .line 605
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 621
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->scrollState:I

    if-nez v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v2, v2, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v2, p1, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->onViewPagerPageChanged(IF)V

    .line 623
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v2, p1, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$300(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;IF)V

    .line 626
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v2, v2, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 627
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iget-object v2, v2, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v2, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 627
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 630
    :cond_2
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 631
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;->this$0:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 633
    :cond_3
    return-void
.end method
