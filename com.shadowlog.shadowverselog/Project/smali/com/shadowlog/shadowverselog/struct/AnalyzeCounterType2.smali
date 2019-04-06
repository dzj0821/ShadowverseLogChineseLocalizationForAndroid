.class public Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;
.super Ljava/lang/Object;
.source "AnalyzeCounterType2.java"


# instance fields
.field public DeckType:Ljava/lang/Integer;

.field public Leader:Ljava/lang/Integer;

.field public RowLabel:Ljava/lang/String;

.field public per:Ljava/lang/Float;

.field public sum:Ljava/lang/Integer;

.field public sum_a:Ljava/lang/Integer;

.field public sum_f:Ljava/lang/Integer;

.field public win:Ljava/lang/Integer;

.field public win_a:Ljava/lang/Integer;

.field public win_f:Ljava/lang/Integer;

.field public win_per:Ljava/lang/Float;

.field public win_per_a:Ljava/lang/Float;

.field public win_per_f:Ljava/lang/Float;


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

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->RowLabel:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->Leader:Ljava/lang/Integer;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->DeckType:Ljava/lang/Integer;

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum:Ljava/lang/Integer;

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_f:Ljava/lang/Integer;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->sum_a:Ljava/lang/Integer;

    .line 12
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->per:Ljava/lang/Float;

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win:Ljava/lang/Integer;

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_f:Ljava/lang/Integer;

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_a:Ljava/lang/Integer;

    .line 20
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per:Ljava/lang/Float;

    .line 21
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per_f:Ljava/lang/Float;

    .line 22
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/struct/AnalyzeCounterType2;->win_per_a:Ljava/lang/Float;

    return-void
.end method
