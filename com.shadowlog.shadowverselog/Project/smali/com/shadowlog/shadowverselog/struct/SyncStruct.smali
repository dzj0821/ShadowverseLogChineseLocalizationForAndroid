.class public Lcom/shadowlog/shadowverselog/struct/SyncStruct;
.super Ljava/lang/Object;
.source "SyncStruct.java"


# instance fields
.field public Error:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Error"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public Result:Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Result"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public putError()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->Error:Ljava/util/List;

    return-object v0
.end method

.method public putResult()Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->Result:Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;

    return-object v0
.end method
