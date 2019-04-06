.class public Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType1;
.super Ljava/lang/Object;
.source "AnalyzeCounterType1.java"


# instance fields
.field public label:Ljava/lang/String;

.field public value:Ljava/lang/Integer;

.field public value_per:Ljava/lang/Float;

.field public wer_per:Ljava/lang/Float;

.field public win:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType1;->label:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType1;->value:Ljava/lang/Integer;

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType1;->win:Ljava/lang/Integer;

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType1;->wer_per:Ljava/lang/Float;

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType1;->value_per:Ljava/lang/Float;

    return-void
.end method
