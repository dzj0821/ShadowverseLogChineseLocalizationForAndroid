.class Lcom/shadowlog/shadowverselog/lib/DataFederate$1;
.super Ljava/lang/Object;
.source "DataFederate.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shadowlog/shadowverselog/lib/DataFederate;->onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V
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
.field private result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

.field final synthetic this$0:Lcom/shadowlog/shadowverselog/lib/DataFederate;


# direct methods
.method constructor <init>(Lcom/shadowlog/shadowverselog/lib/DataFederate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/shadowlog/shadowverselog/lib/DataFederate;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->this$0:Lcom/shadowlog/shadowverselog/lib/DataFederate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/struct/SyncStruct;-><init>()V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

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
    .line 94
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->Error:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->Error:Ljava/util/List;

    const-string v1, "\u901a\u4fe1\u30a8\u30e9\u30fc / \u307e\u305f\u306f\u30d0\u30c3\u30af\u30b0\u30e9\u30a6\u30f3\u30c9\u30c7\u30fc\u30bf\u901a\u4fe1\u306e\u5236\u9650\u3092\u89e3\u9664\u3057\u3066\u4e0b\u3055\u3044"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->this$0:Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->responseComplete(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V

    .line 98
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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
    .line 81
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    .line 83
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->this$0:Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->responseComplete(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->Error:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    iget-object v0, v0, Lcom/shadowlog/shadowverselog/struct/SyncStruct;->Error:Ljava/util/List;

    const-string v1, "DataFederate.onConnect ApiCallbackError"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->this$0:Lcom/shadowlog/shadowverselog/lib/DataFederate;

    iget-object v1, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;->result:Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/lib/DataFederate;->responseComplete(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V

    goto :goto_0
.end method
