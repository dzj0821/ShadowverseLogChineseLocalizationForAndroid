.class public Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator$LinearIndicationInterpolator;
.super Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;
.source "SmartTabIndicationInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearIndicationInterpolator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeftEdge(F)F
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 87
    return p1
.end method

.method public getRightEdge(F)F
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 92
    return p1
.end method
