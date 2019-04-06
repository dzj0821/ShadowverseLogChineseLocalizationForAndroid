.class Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;
.super Ljava/lang/Object;
.source "CheckUpdate.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/function/CheckUpdate;->run()V
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
        "Ljava/util/HashMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Ljava/util/HashMap;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/HashMap;>;"
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->access$000(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;->callbackMethod(ILjava/util/HashMap;)V

    .line 91
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Ljava/util/HashMap;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Ljava/util/HashMap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/HashMap;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/util/HashMap;>;"
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 59
    const-string v3, "CheckUpdate"

    const-string v4, "onResponse"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 63
    .local v0, "map":Ljava/util/HashMap;
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-virtual {v3, v0}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->onCheckData(Ljava/util/HashMap;)I

    move-result v2

    .line 64
    .local v2, "res":I
    if-nez v2, :cond_0

    .line 66
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->access$000(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v6}, Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;->callbackMethod(ILjava/util/HashMap;)V

    .line 86
    .end local v0    # "map":Ljava/util/HashMap;
    .end local v2    # "res":I
    :goto_0
    return-void

    .line 67
    .restart local v0    # "map":Ljava/util/HashMap;
    .restart local v2    # "res":I
    :cond_0
    if-ne v2, v5, :cond_1

    .line 69
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->access$000(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    move-result-object v3

    invoke-interface {v3, v5, v6}, Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;->callbackMethod(ILjava/util/HashMap;)V

    goto :goto_0

    .line 70
    :cond_1
    if-ne v2, v7, :cond_2

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v1, "obj":Ljava/util/HashMap;
    const-string v3, "decktype_version"

    invoke-static {}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->access$100()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->access$000(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    move-result-object v3

    invoke-interface {v3, v7, v1}, Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;->callbackMethod(ILjava/util/HashMap;)V

    goto :goto_0

    .line 78
    .end local v1    # "obj":Ljava/util/HashMap;
    :cond_2
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->access$000(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {v3, v4, v6}, Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;->callbackMethod(ILjava/util/HashMap;)V

    goto :goto_0

    .line 82
    .end local v0    # "map":Ljava/util/HashMap;
    .end local v2    # "res":I
    :cond_3
    const-string v3, "CheckUpdate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error_code"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v3, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->access$000(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4, v6}, Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;->callbackMethod(ILjava/util/HashMap;)V

    goto :goto_0
.end method
