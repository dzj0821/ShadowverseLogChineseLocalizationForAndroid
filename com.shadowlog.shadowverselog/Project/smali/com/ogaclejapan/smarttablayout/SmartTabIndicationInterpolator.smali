.class public abstract Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;
.super Ljava/lang/Object;
.source "SmartTabIndicationInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator$LinearIndicationInterpolator;,
        Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator$SmartIndicationInterpolator;
    }
.end annotation


# static fields
.field static final ID_LINEAR:I = 0x1

.field static final ID_SMART:I

.field public static final LINEAR:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

.field public static final SMART:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator$SmartIndicationInterpolator;

    invoke-direct {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator$SmartIndicationInterpolator;-><init>()V

    sput-object v0, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->SMART:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .line 26
    new-instance v0, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator$LinearIndicationInterpolator;

    invoke-direct {v0}, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator$LinearIndicationInterpolator;-><init>()V

    sput-object v0, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->LINEAR:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(I)Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_0
    sget-object v0, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->SMART:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    .line 36
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;->LINEAR:Lcom/ogaclejapan/smarttablayout/SmartTabIndicationInterpolator;

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract getLeftEdge(F)F
.end method

.method public abstract getRightEdge(F)F
.end method

.method public getThickness(F)F
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
