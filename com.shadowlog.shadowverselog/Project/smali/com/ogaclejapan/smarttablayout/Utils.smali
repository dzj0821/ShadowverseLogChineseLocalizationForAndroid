.class final Lcom/ogaclejapan/smarttablayout/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEnd(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static getEnd(Landroid/view/View;Z)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "withoutPadding"    # Z

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 64
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method static getMarginEnd(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v1, 0x0

    .line 102
    :goto_0
    return v1

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 102
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    goto :goto_0
.end method

.method static getMarginHorizontally(Landroid/view/View;)I
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 106
    if-nez p0, :cond_0

    .line 107
    const/4 v1, 0x0

    .line 110
    :goto_0
    return v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method static getMarginStart(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 94
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    goto :goto_0
.end method

.method static getMeasuredWidth(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 27
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method static getPaddingEnd(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method static getPaddingHorizontally(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static getPaddingStart(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method static getStart(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static getStart(Landroid/view/View;Z)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "withoutPadding"    # Z

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 49
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method static getWidth(Landroid/view/View;)I
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 31
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method static getWidthWithMargin(Landroid/view/View;)I
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginHorizontally(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static isLayoutRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
