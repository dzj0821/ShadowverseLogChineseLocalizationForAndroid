.class Lcom/shadowlog/shadowverselog/SyncActivity$1;
.super Ljava/lang/Object;
.source "SyncActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/SyncActivity;->onSynchronize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Lcom/shadowlog/shadowverselog/struct/SyncStruct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/SyncActivity;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/SyncActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/SyncActivity;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/SyncActivity$1;->this$0:Lcom/shadowlog/shadowverselog/SyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/SyncStruct;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    const-string v0, "SyncActivity"

    const-string v1, "Connection Error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/SyncActivity$1;->this$0:Lcom/shadowlog/shadowverselog/SyncActivity;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/SyncActivity;->onFinish()V

    .line 126
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/SyncStruct;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/SyncStruct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    .line 112
    .local v0, "result":Lcom/shadowlog/shadowverselog/struct/SyncStruct;
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putError()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/SyncActivity$1;->this$0:Lcom/shadowlog/shadowverselog/SyncActivity;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->putResult()Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shadowlog/shadowverselog/SyncActivity;->onSyncNextFunc(Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;)V

    .line 120
    .end local v0    # "result":Lcom/shadowlog/shadowverselog/struct/SyncStruct;
    :cond_1
    :goto_0
    return-void

    .line 116
    .restart local v0    # "result":Lcom/shadowlog/shadowverselog/struct/SyncStruct;
    :cond_2
    const-string v1, "SyncActivity"

    const-string v2, "Synchronize Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/SyncActivity$1;->this$0:Lcom/shadowlog/shadowverselog/SyncActivity;

    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/SyncActivity;->onFinish()V

    goto :goto_0
.end method
