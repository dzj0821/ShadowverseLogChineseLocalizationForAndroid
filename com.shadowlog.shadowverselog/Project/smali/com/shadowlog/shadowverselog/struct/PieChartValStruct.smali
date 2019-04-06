.class public Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;
.super Ljava/lang/Object;
.source "PieChartValStruct.java"


# instance fields
.field public key:Ljava/lang/Integer;

.field public label:Ljava/lang/String;

.field public val:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Integer;
    .param p2, "f"    # Ljava/lang/Float;
    .param p3, "l"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;->key:Ljava/lang/Integer;

    .line 11
    iput-object p2, p0, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;->val:Ljava/lang/Float;

    .line 12
    iput-object p3, p0, Lcom/shadowlog/shadowverselog/struct/PieChartValStruct;->label:Ljava/lang/String;

    .line 13
    return-void
.end method
