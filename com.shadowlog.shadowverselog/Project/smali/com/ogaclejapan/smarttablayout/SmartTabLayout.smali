.class public Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SmartTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;,
        Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISTRIBUTE_EVENLY:Z = false

.field private static final TAB_CLICKABLE:Z = true

.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_ALL_CAPS:Z = true

.field private static final TAB_VIEW_TEXT_COLOR:I = -0x4000000

.field private static final TAB_VIEW_TEXT_MIN_WIDTH:I = 0x0

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TITLE_OFFSET_AUTO_CENTER:I = -0x1

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private distributeEvenly:Z

.field private internalTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

.field private onScrollChangeListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

.field private onTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

.field private tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

.field protected final tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

.field private tabViewBackgroundResId:I

.field private tabViewTextAllCaps:Z

.field private tabViewTextColors:Landroid/content/res/ColorStateList;

.field private tabViewTextHorizontalPadding:I

.field private tabViewTextMinWidth:I

.field private tabViewTextSize:F

.field private titleOffset:I

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 98
    invoke-direct/range {p0 .. p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 104
    .local v11, "dm":Landroid/util/DisplayMetrics;
    iget v9, v11, Landroid/util/DisplayMetrics;->density:F

    .line 106
    .local v9, "density":F
    const/4 v12, -0x1

    .line 107
    .local v12, "tabBackgroundResId":I
    const/4 v13, 0x1

    .line 109
    .local v13, "textAllCaps":Z
    const/16 v19, 0x2

    const/high16 v20, 0x41400000    # 12.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    .line 111
    .local v17, "textSize":F
    const/high16 v19, 0x41800000    # 16.0f

    mul-float v19, v19, v9

    move/from16 v0, v19

    float-to-int v15, v0

    .line 112
    .local v15, "textHorizontalPadding":I
    const/16 v19, 0x0

    mul-float v19, v19, v9

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 113
    .local v16, "textMinWidth":I
    const/4 v10, 0x0

    .line 114
    .local v10, "distributeEvenly":Z
    const/4 v7, -0x1

    .line 115
    .local v7, "customTabLayoutId":I
    const/4 v8, -0x1

    .line 116
    .local v8, "customTabTextViewId":I
    const/4 v6, 0x1

    .line 117
    .local v6, "clickable":Z
    const/high16 v19, 0x41c00000    # 24.0f

    mul-float v19, v19, v9

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 119
    .local v18, "titleOffset":I
    sget-object v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 121
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabBackground:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 123
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextAllCaps:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 125
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextColor:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 127
    .local v14, "textColors":Landroid/content/res/ColorStateList;
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextSize:I

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    .line 129
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextHorizontalPadding:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 131
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_defaultTabTextMinWidth:I

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v16

    .line 133
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_customTabTextLayoutId:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 135
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_customTabTextViewId:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 137
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_distributeEvenly:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 139
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_clickable:I

    move/from16 v0, v19

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 141
    sget v19, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_titleOffset:I

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v18

    .line 143
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->titleOffset:I

    .line 146
    move-object/from16 v0, p0

    iput v12, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewBackgroundResId:I

    .line 147
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextAllCaps:Z

    .line 148
    if-eqz v14, :cond_1

    .line 150
    .end local v14    # "textColors":Landroid/content/res/ColorStateList;
    :goto_0
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextColors:Landroid/content/res/ColorStateList;

    .line 151
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextSize:F

    .line 152
    move-object/from16 v0, p0

    iput v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextHorizontalPadding:I

    .line 153
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextMinWidth:I

    .line 154
    if-eqz v6, :cond_2

    new-instance v19, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->internalTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    .line 155
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->distributeEvenly:Z

    .line 157
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_0

    .line 158
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setCustomTabView(II)V

    .line 161
    :cond_0
    new-instance v19, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    .line 163
    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 164
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    const-string v20, "\'distributeEvenly\' and \'indicatorAlwaysInCenter\' both use does not support"

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 148
    .restart local v14    # "textColors":Landroid/content/res/ColorStateList;
    :cond_1
    const/high16 v19, -0x4000000

    .line 150
    invoke-static/range {v19 .. v19}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_0

    .line 154
    .end local v14    # "textColors":Landroid/content/res/ColorStateList;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 169
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v19, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setFillViewport(Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->addView(Landroid/view/View;II)V

    .line 173
    return-void

    .line 169
    :cond_4
    const/16 v19, 0x0

    goto :goto_2
.end method

.method static synthetic access$300(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollToTab(IF)V

    return-void
.end method

.method static synthetic access$400(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private populateTabStrip()V
    .locals 6

    .prologue
    .line 384
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 386
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 388
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    if-nez v4, :cond_0

    .line 389
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->createDefaultTabView(Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v3

    .line 392
    .local v3, "tabView":Landroid/view/View;
    :goto_1
    if-nez v3, :cond_1

    .line 393
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "tabView is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    .end local v3    # "tabView":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    .line 390
    invoke-interface {v4, v5, v1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;->createTabView(Landroid/view/ViewGroup;ILandroid/support/v4/view/PagerAdapter;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 396
    .restart local v3    # "tabView":Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->distributeEvenly:Z

    if-eqz v4, :cond_2

    .line 397
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 398
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 399
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 402
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->internalTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    if-eqz v4, :cond_3

    .line 403
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->internalTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalTabClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :cond_3
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v4, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->addView(Landroid/view/View;)V

    .line 408
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 409
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 386
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v3    # "tabView":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private scrollToTab(IF)V
    .locals 17
    .param p1, "tabIndex"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v15}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v12

    .line 417
    .local v12, "tabStripChildCount":I
    if-eqz v12, :cond_0

    if-ltz p1, :cond_0

    move/from16 v0, p1

    if-lt v0, v12, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    .line 422
    .local v4, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 423
    .local v9, "selectedTab":Landroid/view/View;
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginHorizontally(Landroid/view/View;)I

    move-result v16

    add-int v13, v15, v16

    .line 424
    .local v13, "widthPlusMargin":I
    int-to-float v15, v13

    mul-float v15, v15, p2

    float-to-int v1, v15

    .line 426
    .local v1, "extraOffset":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v15}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 428
    const/4 v15, 0x0

    cmpg-float v15, v15, p2

    if-gez v15, :cond_2

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v15, p2, v15

    if-gez v15, :cond_2

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    add-int/lit8 v16, p1, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 430
    .local v6, "nextTab":Landroid/view/View;
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v16

    add-int v7, v15, v16

    .line 431
    .local v7, "selectHalfWidth":I
    invoke-static {v6}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v6}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v16

    add-int v5, v15, v16

    .line 432
    .local v5, "nextHalfWidth":I
    add-int v15, v7, v5

    int-to-float v15, v15

    mul-float v15, v15, p2

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 435
    .end local v5    # "nextHalfWidth":I
    .end local v6    # "nextTab":Landroid/view/View;
    .end local v7    # "selectHalfWidth":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 437
    .local v3, "firstTab":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 438
    invoke-static {v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    invoke-static {v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v16

    add-int v2, v15, v16

    .line 439
    .local v2, "first":I
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v16

    add-int v8, v15, v16

    .line 440
    .local v8, "selected":I
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;)I

    move-result v15

    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v16

    sub-int v15, v15, v16

    sub-int v14, v15, v1

    .line 441
    .local v14, "x":I
    sub-int v15, v2, v8

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    .line 449
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollTo(II)V

    goto/16 :goto_0

    .line 443
    .end local v2    # "first":I
    .end local v8    # "selected":I
    .end local v14    # "x":I
    :cond_3
    invoke-static {v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    invoke-static {v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v16

    add-int v2, v15, v16

    .line 444
    .restart local v2    # "first":I
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v16

    add-int v8, v15, v16

    .line 445
    .restart local v8    # "selected":I
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;)I

    move-result v15

    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v16

    sub-int v15, v15, v16

    add-int v14, v15, v1

    .line 446
    .restart local v14    # "x":I
    sub-int v15, v2, v8

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v14, v15

    goto :goto_1

    .line 455
    .end local v2    # "first":I
    .end local v3    # "firstTab":Landroid/view/View;
    .end local v8    # "selected":I
    .end local v14    # "x":I
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->titleOffset:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 457
    const/4 v15, 0x0

    cmpg-float v15, v15, p2

    if-gez v15, :cond_5

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v15, p2, v15

    if-gez v15, :cond_5

    .line 458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    add-int/lit8 v16, p1, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 459
    .restart local v6    # "nextTab":Landroid/view/View;
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v16

    add-int v7, v15, v16

    .line 460
    .restart local v7    # "selectHalfWidth":I
    invoke-static {v6}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidth(Landroid/view/View;)I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-static {v6}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v16

    add-int v5, v15, v16

    .line 461
    .restart local v5    # "nextHalfWidth":I
    add-int v15, v7, v5

    int-to-float v15, v15

    mul-float v15, v15, p2

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 464
    .end local v5    # "nextHalfWidth":I
    .end local v6    # "nextTab":Landroid/view/View;
    .end local v7    # "selectHalfWidth":I
    :cond_5
    if-eqz v4, :cond_6

    .line 465
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidthWithMargin(Landroid/view/View;)I

    move-result v15

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v14, v15, v16

    .line 466
    .restart local v14    # "x":I
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingStart(Landroid/view/View;)I

    move-result v15

    sub-int/2addr v14, v15

    .line 482
    :goto_2
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;)I

    move-result v10

    .line 483
    .local v10, "start":I
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v11

    .line 484
    .local v11, "startMargin":I
    if-eqz v4, :cond_d

    .line 485
    add-int v15, v10, v11

    sub-int/2addr v15, v1

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getWidth()I

    move-result v16

    sub-int v15, v15, v16

    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingHorizontally(Landroid/view/View;)I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v14, v15

    .line 490
    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollTo(II)V

    goto/16 :goto_0

    .line 468
    .end local v10    # "start":I
    .end local v11    # "startMargin":I
    .end local v14    # "x":I
    :cond_6
    invoke-static {v9}, Lcom/ogaclejapan/smarttablayout/Utils;->getWidthWithMargin(Landroid/view/View;)I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v14, v15, v16

    .line 469
    .restart local v14    # "x":I
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->getPaddingStart(Landroid/view/View;)I

    move-result v15

    add-int/2addr v14, v15

    goto :goto_2

    .line 474
    .end local v14    # "x":I
    :cond_7
    if-eqz v4, :cond_a

    .line 475
    if-gtz p1, :cond_8

    const/4 v15, 0x0

    cmpl-float v15, p2, v15

    if-lez v15, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->titleOffset:I

    .restart local v14    # "x":I
    :goto_4
    goto :goto_2

    .end local v14    # "x":I
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 477
    :cond_a
    if-gtz p1, :cond_b

    const/4 v15, 0x0

    cmpl-float v15, p2, v15

    if-lez v15, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->titleOffset:I

    neg-int v14, v15

    .restart local v14    # "x":I
    :goto_5
    goto :goto_2

    .end local v14    # "x":I
    :cond_c
    const/4 v14, 0x0

    goto :goto_5

    .line 487
    .restart local v10    # "start":I
    .restart local v11    # "startMargin":I
    .restart local v14    # "x":I
    :cond_d
    sub-int v15, v10, v11

    add-int/2addr v15, v1

    add-int/2addr v14, v15

    goto :goto_3
.end method


# virtual methods
.method protected createDefaultTabView(Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 347
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 348
    .local v1, "textView":Landroid/widget/TextView;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 349
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 351
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextSize:F

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 352
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 353
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewBackgroundResId:I

    if-eq v2, v4, :cond_3

    .line 357
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 367
    :cond_0
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    .line 369
    iget-boolean v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextAllCaps:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 372
    :cond_1
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextHorizontalPadding:I

    iget v3, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextHorizontalPadding:I

    invoke-virtual {v1, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 376
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextMinWidth:I

    if-lez v2, :cond_2

    .line 377
    iget v2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextMinWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 380
    :cond_2
    return-object v1

    .line 358
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 361
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 362
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 364
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getTabAt(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 199
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 201
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->scrollToTab(IF)V

    .line 204
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 178
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onScrollChangeListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onScrollChangeListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    invoke-interface {v0, p1, p3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;->onScrollChanged(II)V

    .line 181
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v6, 0x0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 186
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v4}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->isIndicatorAlwaysInCenter()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v4}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 187
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v4, v6}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 188
    .local v1, "firstTab":Landroid/view/View;
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v5}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, "lastTab":Landroid/view/View;
    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginStart(Landroid/view/View;)I

    move-result v5

    sub-int v3, v4, v5

    .line 190
    .local v3, "start":I
    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/Utils;->getMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v2}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v5

    sub-int v0, v4, v5

    .line 191
    .local v0, "end":I
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v5}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setMinimumWidth(I)V

    .line 192
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getPaddingBottom()I

    move-result v5

    invoke-static {p0, v3, v4, v0, v5}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 193
    invoke-virtual {p0, v6}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setClipToPadding(Z)V

    .line 195
    .end local v0    # "end":I
    .end local v1    # "firstTab":Landroid/view/View;
    .end local v2    # "lastTab":Landroid/view/View;
    .end local v3    # "start":I
    :cond_0
    return-void
.end method

.method public setCustomTabColorizer(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;)V
    .locals 1
    .param p1, "tabColorizer"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setCustomTabColorizer(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;)V

    .line 224
    return-void
.end method

.method public setCustomTabView(II)V
    .locals 3
    .param p1, "layoutResId"    # I
    .param p2, "textViewId"    # I

    .prologue
    .line 305
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;

    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$SimpleTabProvider;-><init>(Landroid/content/Context;IILcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    .line 306
    return-void
.end method

.method public setCustomTabView(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabProvider:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;

    .line 315
    return-void
.end method

.method public setDefaultTabTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 233
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextColors:Landroid/content/res/ColorStateList;

    .line 234
    return-void
.end method

.method public setDefaultTabTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabViewTextColors:Landroid/content/res/ColorStateList;

    .line 244
    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0
    .param p1, "distributeEvenly"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->distributeEvenly:Z

    .line 251
    return-void
.end method

.method public varargs setDividerColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setDividerColors([I)V

    .line 267
    return-void
.end method

.method public setIndicationInterpolator(Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;)V
    .locals 1
    .param p1, "interpolator"    # Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setIndicationInterpolator(Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;)V

    .line 213
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPagerPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 278
    return-void
.end method

.method public setOnScrollChangeListener(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onScrollChangeListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnScrollChangeListener;

    .line 287
    return-void
.end method

.method public setOnTabClickListener(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->onTabClickListener:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$OnTabClickListener;

    .line 296
    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setSelectedIndicatorColors([I)V

    .line 259
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->tabStrip:Lcom/ogaclejapan/smarttablayout/SmartTabStrip;

    invoke-virtual {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->removeAllViews()V

    .line 324
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 325
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$InternalViewPagerListener;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabLayout;Lcom/ogaclejapan/smarttablayout/SmartTabLayout$1;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 327
    invoke-direct {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->populateTabStrip()V

    .line 329
    :cond_0
    return-void
.end method
