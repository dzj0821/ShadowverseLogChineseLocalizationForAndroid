.class public Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;
.super Ljava/lang/Object;
.source "DeckHashToDeck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;
    }
.end annotation


# instance fields
.field private END_POINT:Ljava/lang/String;

.field private _deckHashCallbacks:Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;

.field deck_code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dc"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "https://shadowlog.com"

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->END_POINT:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->deck_code:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 6

    .prologue
    .line 39
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 40
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lretrofit2/Retrofit$Builder;

    invoke-direct {v4}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v5, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->END_POINT:Ljava/lang/String;

    .line 41
    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    .line 42
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    .line 44
    .local v3, "retrofit":Lretrofit2/Retrofit;
    const-class v4, Lcom/shadowlog/shadowverselog/api/DeckHashApi;

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shadowlog/shadowverselog/api/DeckHashApi;

    .line 45
    .local v0, "api":Lcom/shadowlog/shadowverselog/api/DeckHashApi;
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->deck_code:Ljava/lang/String;

    const-string v5, "1"

    invoke-interface {v0, v4, v5}, Lcom/shadowlog/shadowverselog/api/DeckHashApi;->getSyncData(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 50
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    new-instance v4, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;

    invoke-direct {v4, p0}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$1;-><init>(Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;)V

    invoke-interface {v1, v4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 65
    return-void
.end method

.method public responseComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "sst"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->_deckHashCallbacks:Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;

    invoke-interface {v0, p1}, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;->deckHashCallback(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setCallbacks(Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;)V
    .locals 0
    .param p1, "deckHashCallbacks"    # Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/function/DeckHashToDeck;->_deckHashCallbacks:Lcom/shadowlog/shadowverselog/function/DeckHashToDeck$DeckHashCallbacks;

    .line 26
    return-void
.end method
