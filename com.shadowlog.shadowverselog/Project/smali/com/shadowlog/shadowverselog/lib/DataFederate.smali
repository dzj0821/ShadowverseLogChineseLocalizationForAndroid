.class public Lcom/shadowlog/shadowverselog/lib/DataFederate;
.super Ljava/lang/Object;
.source "DataFederate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;
    }
.end annotation


# instance fields
.field private END_POINT:Ljava/lang/String;

.field private _dataFederateCallbacks:Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;

.field public session_id:Ljava/lang/String;

.field public user_id:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1, "u"    # Ljava/lang/Integer;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "https://shadowlog.com"

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->END_POINT:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->user_id:Ljava/lang/Integer;

    .line 34
    iput-object p2, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->session_id:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public onConnect(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 16
    .param p1, "type"    # Ljava/lang/Integer;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v14, 0x3e8

    div-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "date":Ljava/lang/String;
    const-string v6, ""

    .line 49
    .local v6, "token":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->user_id:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shadowlog/shadowverselog/function/MakeMd5Hash;->create(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 56
    :goto_0
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    .line 57
    .local v12, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lretrofit2/Retrofit$Builder;

    invoke-direct {v3}, Lretrofit2/Retrofit$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->END_POINT:Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 59
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v13

    .line 61
    .local v13, "retrofit":Lretrofit2/Retrofit;
    const-class v3, Lcom/shadowlog/shadowverselog/api/FederateApi;

    invoke-virtual {v13, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shadowlog/shadowverselog/api/FederateApi;

    .line 64
    .local v2, "api":Lcom/shadowlog/shadowverselog/api/FederateApi;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->user_id:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->session_id:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 64
    invoke-interface/range {v2 .. v9}, Lcom/shadowlog/shadowverselog/api/FederateApi;->getSyncData(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v10

    .line 77
    .local v10, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    new-instance v3, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/shadowlog/shadowverselog/lib/DataFederate$1;-><init>(Lcom/shadowlog/shadowverselog/lib/DataFederate;)V

    invoke-interface {v10, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 100
    return-void

    .line 50
    .end local v2    # "api":Lcom/shadowlog/shadowverselog/api/FederateApi;
    .end local v10    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    .end local v12    # "gson":Lcom/google/gson/Gson;
    .end local v13    # "retrofit":Lretrofit2/Retrofit;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MakeMd5Hash Error."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v11

    .local v11, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "MakeMd5Hash Error."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public responseComplete(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V
    .locals 1
    .param p1, "sst"    # Lcom/shadowlog/shadowverselog/struct/SyncStruct;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->_dataFederateCallbacks:Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;

    invoke-interface {v0, p1}, Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;->dataFederateCallback(Lcom/shadowlog/shadowverselog/struct/SyncStruct;)V

    .line 105
    return-void
.end method

.method public setCallbacks(Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;)V
    .locals 0
    .param p1, "dataFederateCallbacks"    # Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/lib/DataFederate;->_dataFederateCallbacks:Lcom/shadowlog/shadowverselog/lib/DataFederate$DataFederateCallbacks;

    .line 29
    return-void
.end method
