.class Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;
.super Ljava/lang/Object;
.source "DeckHashToDeck.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->onConnect()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Ljava/lang/String;

.field final synthetic this$0:Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;->this$0:Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;->result:Ljava/lang/String;

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
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;->this$0:Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->responseComplete(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;->result:Ljava/lang/String;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;->this$0:Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->responseComplete(Ljava/lang/String;)V

    .line 58
    return-void
.end method
