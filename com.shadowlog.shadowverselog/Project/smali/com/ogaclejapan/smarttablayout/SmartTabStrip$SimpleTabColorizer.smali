.class Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SmartTabStrip.java"

# interfaces
.implements Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/SmartTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabColorizer"
.end annotation


# instance fields
.field private dividerColors:[I

.field private indicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ogaclejapan/smarttablayout/SmartTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ogaclejapan/smarttablayout/SmartTabStrip$1;

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDividerColor(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->dividerColors:[I

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->dividerColors:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public final getIndicatorColor(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->indicatorColors:[I

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->indicatorColors:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method varargs setDividerColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 441
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->dividerColors:[I

    .line 442
    return-void
.end method

.method varargs setIndicatorColors([I)V
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 437
    iput-object p1, p0, Lcom/ogaclejapan/smarttablayout/SmartTabStrip$SimpleTabColorizer;->indicatorColors:[I

    .line 438
    return-void
.end method
