.class Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;
.super Ljava/lang/Object;
.source "CheckDeckType.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/function/CheckDeckType;->run()V
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
        "Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shadowlog/shadowverselog/function/CheckDeckType;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/function/CheckDeckType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/function/CheckDeckType;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckDeckType;

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
            "Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;>;"
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckDeckType;

    invoke-static {v0}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->access$000(Lcom/shadowlog/shadowverselog/function/CheckDeckType;)Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;->callbackMethod2(I)V

    .line 74
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;>;"
    const-string v1, "CheckDeckType"

    const-string v2, "onResponse"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;

    .line 56
    .local v0, "obj":Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckDeckType;

    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->setDeckType(Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;)I

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckDeckType;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->access$000(Lcom/shadowlog/shadowverselog/function/CheckDeckType;)Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;->callbackMethod2(I)V

    .line 69
    .end local v0    # "obj":Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;
    :goto_0
    return-void

    .line 61
    .restart local v0    # "obj":Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;
    :cond_0
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckDeckType;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->access$000(Lcom/shadowlog/shadowverselog/function/CheckDeckType;)Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;->callbackMethod2(I)V

    goto :goto_0

    .line 65
    .end local v0    # "obj":Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;
    :cond_1
    const-string v1, "CheckDeckType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;->this$0:Lcom/shadowlog/shadowverselog/function/CheckDeckType;

    invoke-static {v1}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->access$000(Lcom/shadowlog/shadowverselog/function/CheckDeckType;)Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;->callbackMethod2(I)V

    goto :goto_0
.end method
