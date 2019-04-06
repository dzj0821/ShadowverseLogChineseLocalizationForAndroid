.class public Lcom/shadowlog/shadowverselog/function/CheckDeckType;
.super Ljava/lang/Object;
.source "CheckDeckType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;
    }
.end annotation


# static fields
.field private static final END_POINT:Ljava/lang/String; = "https://shadowlog.com"

.field private static context:Landroid/content/Context;


# instance fields
.field private _cdtCallBacks:Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/function/CheckDeckType;)Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/function/CheckDeckType;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->_cdtCallBacks:Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;

    return-object v0
.end method


# virtual methods
.method public callbackMethod2(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 124
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 46
    const-string v3, "CheckDeckType"

    const-string v4, "run"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v4, "https://shadowlog.com"

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v1

    .line 48
    .local v1, "retrofit":Lretrofit2/Retrofit;
    const-class v3, Lcom/shadowlog/shadowverselog/api/UpdateDeckTypeApi;

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shadowlog/shadowverselog/api/UpdateDeckTypeApi;

    .line 49
    .local v2, "service":Lcom/shadowlog/shadowverselog/api/UpdateDeckTypeApi;
    invoke-interface {v2}, Lcom/shadowlog/shadowverselog/api/UpdateDeckTypeApi;->getData()Lretrofit2/Call;

    move-result-object v0

    .line 50
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;>;"
    new-instance v3, Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/function/CheckDeckType$1;-><init>(Lcom/shadowlog/shadowverselog/function/CheckDeckType;)V

    invoke-interface {v0, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 76
    return-void
.end method

.method public setCallbacks(Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;)V
    .locals 0
    .param p1, "myClassCallbacks"    # Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->_cdtCallBacks:Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;

    .line 40
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 118
    sput-object p1, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->context:Landroid/content/Context;

    .line 119
    return-void
.end method

.method protected setDeckType(Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;)I
    .locals 12
    .param p1, "obj"    # Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/DeckTypeStruct;->putDeckType()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "decktype":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;

    sget-object v6, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->open()V

    .line 88
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->beginTransaction()V

    .line 89
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->deleteAll()V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 91
    .local v4, "item":Ljava/util/HashMap;
    const-string v7, "DeckType DBInsert"

    const-string v8, "val"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v5, "tmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "did"

    const-string v8, "id"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v7, "name"

    const-string v8, "val"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v7, "leader"

    const-string v8, "lid"

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {v1, v5}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->doInsert(Ljava/util/Map;)V

    goto :goto_0

    .line 109
    .end local v0    # "decktype":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    .end local v4    # "item":Ljava/util/HashMap;
    .end local v5    # "tmp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v6

    .line 98
    .restart local v0    # "decktype":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v1    # "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    :cond_0
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->setTransactionSuccessful()V

    .line 99
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->endTransaction()V

    .line 100
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->close()V

    .line 103
    new-instance v3, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    sget-object v6, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->context:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 104
    .local v3, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 105
    const-string v6, "decktype_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    const/4 v6, 0x0

    goto :goto_1
.end method
