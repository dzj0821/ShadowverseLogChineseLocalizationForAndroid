.class Lcom/ogaclejapan/smarttablayout/SmartTabStrip;
.super Landroid/widget/LinearLayout;
.source "SmartTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;
    }
.end annotation


# static fields
.field private static final AUTO_WIDTH:I = -0x1

.field private static final DEFAULT_BOTTOM_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_BOTTOM_BORDER_THICKNESS_DIPS:I = 0x2

.field private static final DEFAULT_DIVIDER_COLOR_ALPHA:B = 0x20t

.field private static final DEFAULT_DIVIDER_HEIGHT:F = 0.5f

.field private static final DEFAULT_DIVIDER_THICKNESS_DIPS:I = 0x1

.field private static final DEFAULT_DRAW_DECORATION_AFTER_TAB:Z = false

.field private static final DEFAULT_INDICATOR_CORNER_RADIUS:F = 0.0f

.field private static final DEFAULT_INDICATOR_GRAVITY:I = 0x0

.field private static final DEFAULT_INDICATOR_IN_CENTER:Z = false

.field private static final DEFAULT_INDICATOR_IN_FRONT:Z = false

.field private static final DEFAULT_INDICATOR_WITHOUT_PADDING:Z = false

.field private static final DEFAULT_SELECTED_INDICATOR_COLOR:I = -0xcc4a1b

.field private static final DEFAULT_TOP_BORDER_COLOR_ALPHA:B = 0x26t

.field private static final DEFAULT_TOP_BORDER_THICKNESS_DIPS:I = 0x0

.field private static final GRAVITY_BOTTOM:I = 0x0

.field private static final GRAVITY_CENTER:I = 0x2

.field private static final GRAVITY_TOP:I = 0x1

.field private static final SELECTED_INDICATOR_THICKNESS_DIPS:I = 0x8


# instance fields
.field private final borderPaint:Landroid/graphics/Paint;

.field private final bottomBorderColor:I

.field private final bottomBorderThickness:I

.field private customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

.field private final defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

.field private final dividerHeight:F

.field private final dividerPaint:Landroid/graphics/Paint;

.field private final dividerThickness:I

.field private final drawDecorationAfterTab:Z

.field private indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

.field private final indicatorAlwaysInCenter:Z

.field private final indicatorCornerRadius:F

.field private final indicatorGravity:I

.field private final indicatorInFront:Z

.field private final indicatorPaint:Landroid/graphics/Paint;

.field private final indicatorRectF:Landroid/graphics/RectF;

.field private final indicatorThickness:I

.field private final indicatorWidth:I

.field private final indicatorWithoutPadding:Z

.field private lastPosition:I

.field private selectedPosition:I

.field private selectionOffset:F

.field private final topBorderColor:I

.field private final topBorderThickness:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v28, Landroid/graphics/RectF;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    .line 87
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setWillNotDraw(Z)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v5, "density":F
    new-instance v22, Landroid/util/TypedValue;

    invoke-direct/range {v22 .. v22}, Landroid/util/TypedValue;-><init>()V

    .line 92
    .local v22, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v28

    const v29, 0x1010030

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v22

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 93
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v25, v0

    .line 95
    .local v25, "themeForegroundColor":I
    const/16 v21, 0x0

    .line 96
    .local v21, "indicatorWithoutPadding":Z
    const/16 v18, 0x0

    .line 97
    .local v18, "indicatorInFront":Z
    const/4 v12, 0x0

    .line 98
    .local v12, "indicatorAlwaysInCenter":Z
    const/4 v11, 0x0

    .line 99
    .local v11, "indicationInterpolatorId":I
    const/16 v17, 0x0

    .line 100
    .local v17, "indicatorGravity":I
    const v13, -0xcc4a1b

    .line 101
    .local v13, "indicatorColor":I
    const/4 v15, -0x1

    .line 102
    .local v15, "indicatorColorsId":I
    const/high16 v28, 0x41000000    # 8.0f

    mul-float v28, v28, v5

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v19, v0

    .line 103
    .local v19, "indicatorThickness":I
    const/16 v20, -0x1

    .line 104
    .local v20, "indicatorWidth":I
    const/16 v28, 0x0

    mul-float v16, v28, v5

    .line 105
    .local v16, "indicatorCornerRadius":F
    const/16 v28, 0x26

    move/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setColorAlpha(IB)I

    move-result v23

    .line 106
    .local v23, "overlineColor":I
    const/16 v28, 0x0

    mul-float v28, v28, v5

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v24, v0

    .line 107
    .local v24, "overlineThickness":I
    const/16 v28, 0x26

    move/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setColorAlpha(IB)I

    move-result v26

    .line 108
    .local v26, "underlineColor":I
    const/high16 v28, 0x40000000    # 2.0f

    mul-float v28, v28, v5

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 109
    .local v27, "underlineThickness":I
    const/16 v28, 0x20

    move/from16 v0, v25

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->setColorAlpha(IB)I

    move-result v6

    .line 110
    .local v6, "dividerColor":I
    const/4 v8, -0x1

    .line 111
    .local v8, "dividerColorsId":I
    const/high16 v28, 0x3f800000    # 1.0f

    mul-float v28, v28, v5

    move/from16 v0, v28

    float-to-int v9, v0

    .line 112
    .local v9, "dividerThickness":I
    const/4 v10, 0x0

    .line 114
    .local v10, "drawDecorationAfterTab":Z
    sget-object v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 115
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorAlwaysInCenter:I

    move/from16 v0, v28

    invoke-virtual {v4, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 117
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorWithoutPadding:I

    move/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    .line 119
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorInFront:I

    move/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v18

    .line 121
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorInterpolation:I

    move/from16 v0, v28

    invoke-virtual {v4, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 123
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorGravity:I

    move/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    .line 125
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorColor:I

    move/from16 v0, v28

    invoke-virtual {v4, v0, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 127
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorColors:I

    move/from16 v0, v28

    invoke-virtual {v4, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 129
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorThickness:I

    move/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 131
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorWidth:I

    move/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v20

    .line 133
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_indicatorCornerRadius:I

    move/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v16

    .line 135
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_overlineColor:I

    move/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    .line 137
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_overlineThickness:I

    move/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v24

    .line 139
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_underlineColor:I

    move/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v26

    .line 141
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_underlineThickness:I

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    .line 143
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerColor:I

    move/from16 v0, v28

    invoke-virtual {v4, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 145
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerColors:I

    move/from16 v0, v28

    invoke-virtual {v4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 147
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_dividerThickness:I

    move/from16 v0, v28

    invoke-virtual {v4, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 149
    sget v28, Lcom/ogaclejapan/smarttablayout/R$styleable;->stl_SmartTabLayout_stl_drawDecorationAfterTab:I

    move/from16 v0, v28

    invoke-virtual {v4, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 151
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v15, v0, :cond_0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v14, v0, [I

    const/16 v28, 0x0

    aput v13, v14, v28

    .line 157
    .local v14, "indicatorColors":[I
    :goto_0
    const/16 v28, -0x1

    move/from16 v0, v28

    if-ne v8, v0, :cond_1

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v7, v0, [I

    const/16 v28, 0x0

    aput v6, v7, v28

    .line 161
    .local v7, "dividerColors":[I
    :goto_1
    new-instance v28, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    const/16 v29, 0x0

    invoke-direct/range {v28 .. v29}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;-><init>(Lcom/ogaclejapan/smarttablayout/SmartTabStrip$1;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->setDividerColors([I)V

    .line 165
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderThickness:I

    .line 166
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderColor:I

    .line 167
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderThickness:I

    .line 168
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderColor:I

    .line 169
    new-instance v28, Landroid/graphics/Paint;

    const/16 v29, 0x1

    invoke-direct/range {v28 .. v29}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    .line 171
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorAlwaysInCenter:Z

    .line 172
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    .line 173
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorInFront:Z

    .line 174
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    .line 175
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWidth:I

    .line 176
    new-instance v28, Landroid/graphics/Paint;

    const/16 v29, 0x1

    invoke-direct/range {v28 .. v29}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorPaint:Landroid/graphics/Paint;

    .line 177
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorCornerRadius:F

    .line 178
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorGravity:I

    .line 180
    const/high16 v28, 0x3f000000    # 0.5f

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerHeight:F

    .line 181
    new-instance v28, Landroid/graphics/Paint;

    const/16 v29, 0x1

    invoke-direct/range {v28 .. v29}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerPaint:Landroid/graphics/Paint;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    int-to-float v0, v9

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    move-object/from16 v0, p0

    iput v9, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerThickness:I

    .line 185
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawDecorationAfterTab:Z

    .line 187
    invoke-static {v11}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->of(I)Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .line 188
    return-void

    .line 155
    .end local v7    # "dividerColors":[I
    .end local v14    # "indicatorColors":[I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    goto/16 :goto_0

    .line 159
    .restart local v14    # "indicatorColors":[I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    goto/16 :goto_1
.end method

.method private static blendColors(IIF)I
    .locals 7
    .param p0, "color1"    # I
    .param p1, "color2"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 204
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, p2

    .line 205
    .local v2, "inverseRation":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v3, v4, v5

    .line 206
    .local v3, "r":F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v1, v4, v5

    .line 207
    .local v1, "g":F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .line 208
    .local v0, "b":F
    float-to-int v4, v3

    float-to-int v5, v1

    float-to-int v6, v0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    return v4
.end method

.method private drawDecoration(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getHeight()I

    move-result v7

    .line 269
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getWidth()I

    move-result v23

    .line 270
    .local v23, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v21

    .line 271
    .local v21, "tabCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getTabColorizer()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    move-result-object v20

    .line 272
    .local v20, "tabColorizer":Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 274
    .local v11, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorInFront:Z

    if-eqz v3, :cond_0

    .line 275
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawOverline(Landroid/graphics/Canvas;II)V

    .line 276
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v3, v2, v7}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawUnderline(Landroid/graphics/Canvas;III)V

    .line 280
    :cond_0
    if-lez v21, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 282
    .local v18, "selectedTab":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;Z)I

    move-result v17

    .line 283
    .local v17, "selectedStart":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;Z)I

    move-result v16

    .line 286
    .local v16, "selectedEnd":I
    if-eqz v11, :cond_5

    .line 287
    move/from16 v5, v16

    .line 288
    .local v5, "left":I
    move/from16 v6, v17

    .line 294
    .local v6, "right":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v9

    .line 295
    .local v9, "color":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    int-to-float v8, v3

    .line 297
    .local v8, "thickness":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->getIndicatorColor(I)I

    move-result v12

    .line 299
    .local v12, "nextColor":I
    if-eq v9, v12, :cond_1

    .line 300
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    invoke-static {v12, v9, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->blendColors(IIF)I

    move-result v9

    .line 304
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->getLeftEdge(F)F

    move-result v19

    .line 305
    .local v19, "startOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->getRightEdge(F)F

    move-result v10

    .line 306
    .local v10, "endOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    invoke-virtual {v3, v4}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->getThickness(F)F

    move-result v22

    .line 308
    .local v22, "thicknessOffset":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 309
    .local v15, "nextTab":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    invoke-static {v15, v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getStart(Landroid/view/View;Z)I

    move-result v14

    .line 310
    .local v14, "nextStart":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWithoutPadding:Z

    invoke-static {v15, v3}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;Z)I

    move-result v13

    .line 311
    .local v13, "nextEnd":I
    if-eqz v11, :cond_6

    .line 312
    int-to-float v3, v13

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v10

    int-to-float v0, v5

    move/from16 v24, v0

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    float-to-int v5, v3

    .line 313
    int-to-float v3, v14

    mul-float v3, v3, v19

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v19

    int-to-float v0, v6

    move/from16 v24, v0

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    float-to-int v6, v3

    .line 318
    :goto_1
    mul-float v8, v8, v22

    .end local v10    # "endOffset":F
    .end local v12    # "nextColor":I
    .end local v13    # "nextEnd":I
    .end local v14    # "nextStart":I
    .end local v15    # "nextTab":Landroid/view/View;
    .end local v19    # "startOffset":F
    .end local v22    # "thicknessOffset":F
    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 321
    invoke-direct/range {v3 .. v9}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawIndicator(Landroid/graphics/Canvas;IIIFI)V

    .line 325
    .end local v5    # "left":I
    .end local v6    # "right":I
    .end local v8    # "thickness":F
    .end local v9    # "color":I
    .end local v16    # "selectedEnd":I
    .end local v17    # "selectedStart":I
    .end local v18    # "selectedTab":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorInFront:Z

    if-nez v3, :cond_4

    .line 326
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawOverline(Landroid/graphics/Canvas;II)V

    .line 327
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v7}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawUnderline(Landroid/graphics/Canvas;III)V

    .line 331
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawSeparator(Landroid/graphics/Canvas;II)V

    .line 333
    return-void

    .line 290
    .restart local v16    # "selectedEnd":I
    .restart local v17    # "selectedStart":I
    .restart local v18    # "selectedTab":Landroid/view/View;
    :cond_5
    move/from16 v5, v17

    .line 291
    .restart local v5    # "left":I
    move/from16 v6, v16

    .restart local v6    # "right":I
    goto/16 :goto_0

    .line 315
    .restart local v8    # "thickness":F
    .restart local v9    # "color":I
    .restart local v10    # "endOffset":F
    .restart local v12    # "nextColor":I
    .restart local v13    # "nextEnd":I
    .restart local v14    # "nextStart":I
    .restart local v15    # "nextTab":Landroid/view/View;
    .restart local v19    # "startOffset":F
    .restart local v22    # "thicknessOffset":F
    :cond_6
    int-to-float v3, v14

    mul-float v3, v3, v19

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, v19

    int-to-float v0, v5

    move/from16 v24, v0

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    float-to-int v5, v3

    .line 316
    int-to-float v3, v13

    mul-float/2addr v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v10

    int-to-float v0, v6

    move/from16 v24, v0

    mul-float v4, v4, v24

    add-float/2addr v3, v4

    float-to-int v6, v3

    goto :goto_1
.end method

.method private drawIndicator(Landroid/graphics/Canvas;IIIFI)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "height"    # I
    .param p5, "thickness"    # F
    .param p6, "color"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 360
    iget v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWidth:I

    if-nez v4, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorGravity:I

    packed-switch v4, :pswitch_data_0

    .line 381
    int-to-float v4, p4

    iget v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 382
    .local v1, "center":F
    div-float v4, p5, v6

    sub-float v3, v1, v4

    .line 383
    .local v3, "top":F
    div-float v4, p5, v6

    add-float v0, v1, v4

    .line 386
    .local v0, "bottom":F
    :goto_1
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWidth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 388
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 394
    :goto_2
    iget v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorCornerRadius:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 395
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorCornerRadius:F

    iget v6, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorCornerRadius:F

    iget-object v7, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 370
    .end local v0    # "bottom":F
    .end local v1    # "center":F
    .end local v3    # "top":F
    :pswitch_0
    iget v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorThickness:I

    int-to-float v4, v4

    div-float v1, v4, v6

    .line 371
    .restart local v1    # "center":F
    div-float v4, p5, v6

    sub-float v3, v1, v4

    .line 372
    .restart local v3    # "top":F
    div-float v4, p5, v6

    add-float v0, v1, v4

    .line 373
    .restart local v0    # "bottom":F
    goto :goto_1

    .line 375
    .end local v0    # "bottom":F
    .end local v1    # "center":F
    .end local v3    # "top":F
    :pswitch_1
    int-to-float v4, p4

    div-float v1, v4, v6

    .line 376
    .restart local v1    # "center":F
    div-float v4, p5, v6

    sub-float v3, v1, v4

    .line 377
    .restart local v3    # "top":F
    div-float v4, p5, v6

    add-float v0, v1, v4

    .line 378
    .restart local v0    # "bottom":F
    goto :goto_1

    .line 390
    :cond_2
    sub-int v4, p2, p3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v2, v4, v6

    .line 391
    .local v2, "padding":F
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    int-to-float v5, p2

    add-float/2addr v5, v2

    int-to-float v6, p3

    sub-float/2addr v6, v2

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 399
    .end local v2    # "padding":F
    :cond_3
    iget-object v4, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorRectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawOverline(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 404
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderThickness:I

    if-gtz v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    int-to-float v1, p2

    const/4 v2, 0x0

    int-to-float v3, p3

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->topBorderThickness:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawSeparator(Landroid/graphics/Canvas;II)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "height"    # I
    .param p3, "tabCount"    # I

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerThickness:I

    if-gtz v1, :cond_1

    .line 356
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerHeight:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move/from16 v0, p2

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v8, v1

    .line 341
    .local v8, "dividerHeightPx":I
    invoke-virtual/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getTabColorizer()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    move-result-object v16

    .line 344
    .local v16, "tabColorizer":Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    sub-int v1, p2, v8

    div-int/lit8 v14, v1, 0x2

    .line 345
    .local v14, "separatorTop":I
    add-int v13, v14, v8

    .line 347
    .local v13, "separatorBottom":I
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/Utils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v12

    .line 348
    .local v12, "isLayoutRtl":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v11, v1, :cond_0

    .line 349
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 350
    .local v7, "child":Landroid/view/View;
    invoke-static {v7}, Lcom/ogaclejapan/smarttablayout/Utils;->getEnd(Landroid/view/View;)I

    move-result v9

    .line 351
    .local v9, "end":I
    invoke-static {v7}, Lcom/ogaclejapan/smarttablayout/Utils;->getMarginEnd(Landroid/view/View;)I

    move-result v10

    .line 352
    .local v10, "endMargin":I
    if-eqz v12, :cond_2

    sub-int v15, v9, v10

    .line 353
    .local v15, "separatorX":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;->getDividerColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 354
    int-to-float v2, v15

    int-to-float v3, v14

    int-to-float v4, v15

    int-to-float v5, v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 352
    .end local v15    # "separatorX":I
    :cond_2
    add-int v15, v9, v10

    goto :goto_1
.end method

.method private drawUnderline(Landroid/graphics/Canvas;III)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "height"    # I

    .prologue
    .line 413
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderThickness:I

    if-gtz v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 418
    int-to-float v1, p2

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->bottomBorderThickness:I

    sub-int v0, p4, v0

    int-to-float v2, v0

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->borderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static setColorAlpha(IB)I
    .locals 3
    .param p0, "color"    # I
    .param p1, "alpha"    # B

    .prologue
    .line 194
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 262
    iget-boolean v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawDecorationAfterTab:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawDecoration(Landroid/graphics/Canvas;)V

    .line 265
    :cond_0
    return-void
.end method

.method getTabColorizer()Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    goto :goto_0
.end method

.method isIndicatorAlwaysInCenter()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicatorAlwaysInCenter:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawDecorationAfterTab:Z

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->drawDecoration(Landroid/graphics/Canvas;)V

    .line 257
    :cond_0
    return-void
.end method

.method onViewPagerPageChanged(IF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 236
    iput p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    .line 237
    iput p2, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectionOffset:F

    .line 238
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->lastPosition:I

    iget v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    if-eq v0, v1, :cond_0

    .line 239
    iget v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->selectedPosition:I

    iput v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->lastPosition:I

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 242
    return-void
.end method

.method setCustomTabColorizer(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;)V
    .locals 0
    .param p1, "customTabColorizer"    # Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .line 218
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 219
    return-void
.end method

.method varargs setDividerColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .line 231
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->setDividerColors([I)V

    .line 232
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 233
    return-void
.end method

.method setIndicationInterpolator(Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->indicationInterpolator:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .line 213
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 214
    return-void
.end method

.method varargs setSelectedIndicatorColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->customTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;

    .line 224
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->defaultTabColorizer:Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;

    invoke-virtual {v0, p1}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->setIndicatorColors([I)V

    .line 225
    invoke-virtual {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip;->invalidate()V

    .line 226
    return-void
.end method
