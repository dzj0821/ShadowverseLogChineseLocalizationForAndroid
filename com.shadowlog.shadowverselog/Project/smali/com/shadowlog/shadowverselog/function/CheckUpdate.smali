.class public Lcom/shadowlog/shadowverselog/function/CheckUpdate;
.super Ljava/lang/Object;
.source "CheckUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;
    }
.end annotation


# static fields
.field private static APP_VERSION:D = 0.0

.field private static final END_POINT:Ljava/lang/String; = "https://shadowlog.com"

.field private static context:Landroid/content/Context;

.field private static decktype_update_version:Ljava/lang/Integer;


# instance fields
.field private _cuCallBacks:Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->APP_VERSION:D

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->decktype_update_version:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->_cuCallBacks:Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->decktype_update_version:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public callbackMethod(ILjava/util/HashMap;)V
    .locals 0
    .param p1, "res"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method protected onCheckData(Ljava/util/HashMap;)I
    .locals 12
    .param p1, "map"    # Ljava/util/HashMap;

    .prologue
    const/4 v8, 0x3

    .line 109
    :try_start_0
    new-instance v7, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    sget-object v9, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->context:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 110
    .local v7, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 111
    const-string v9, "newpack_date"

    const-string v10, "newpack_date"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v9, "alert_message"

    const-string v10, "alert_message"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v9, "decktype_version"

    invoke-virtual {v7, v9}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 114
    .local v4, "d":Ljava/lang/Integer;
    invoke-virtual {v7}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 117
    new-instance v0, Ljava/lang/Float;

    sget-wide v10, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->APP_VERSION:D

    invoke-direct {v0, v10, v11}, Ljava/lang/Float;-><init>(D)V

    .line 118
    .local v0, "a":Ljava/lang/Float;
    const-string v9, "app_version"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 121
    .local v1, "b":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    const/4 v8, 0x2

    .line 141
    .end local v0    # "a":Ljava/lang/Float;
    .end local v1    # "b":Ljava/lang/Float;
    .end local v4    # "d":Ljava/lang/Integer;
    .end local v7    # "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    :goto_0
    return v8

    .line 123
    .restart local v0    # "a":Ljava/lang/Float;
    .restart local v1    # "b":Ljava/lang/Float;
    .restart local v4    # "d":Ljava/lang/Integer;
    .restart local v7    # "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    :cond_0
    const-string v9, "decktype_version"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 126
    .local v2, "c":Ljava/lang/Integer;
    new-instance v5, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;

    sget-object v9, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->context:Landroid/content/Context;

    invoke-direct {v5, v9}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;-><init>(Landroid/content/Context;)V

    .line 127
    .local v5, "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->open()V

    .line 128
    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->doCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 130
    .local v3, "count":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    if-ge v9, v10, :cond_1

    sput-object v2, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->decktype_update_version:Ljava/lang/Integer;

    goto :goto_0

    .line 139
    .end local v0    # "a":Ljava/lang/Float;
    .end local v1    # "b":Ljava/lang/Float;
    .end local v2    # "c":Ljava/lang/Integer;
    .end local v3    # "count":Ljava/lang/Integer;
    .end local v4    # "d":Ljava/lang/Integer;
    .end local v5    # "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    .end local v7    # "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    :catch_0
    move-exception v6

    .line 141
    .local v6, "e":Ljava/lang/Exception;
    const/4 v8, 0x1

    goto :goto_0

    .line 131
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Ljava/lang/Float;
    .restart local v1    # "b":Ljava/lang/Float;
    .restart local v2    # "c":Ljava/lang/Integer;
    .restart local v3    # "count":Ljava/lang/Integer;
    .restart local v4    # "d":Ljava/lang/Integer;
    .restart local v5    # "dtdb":Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
    .restart local v7    # "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    :cond_1
    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->close()V

    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v9

    if-lez v9, :cond_2

    sput-object v2, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->decktype_update_version:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 52
    const-string v3, "CheckUpdate"

    const-string v4, "run"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
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

    .line 54
    .local v1, "retrofit":Lretrofit2/Retrofit;
    const-class v3, Lcom/shadowlog/shadowverselog/api/UpdateApi;

    invoke-virtual {v1, v3}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shadowlog/shadowverselog/api/UpdateApi;

    .line 55
    .local v2, "service":Lcom/shadowlog/shadowverselog/api/UpdateApi;
    invoke-interface {v2}, Lcom/shadowlog/shadowverselog/api/UpdateApi;->getData()Lretrofit2/Call;

    move-result-object v0

    .line 56
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/util/HashMap;>;"
    new-instance v3, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/function/CheckUpdate$1;-><init>(Lcom/shadowlog/shadowverselog/function/CheckUpdate;)V

    invoke-interface {v0, v3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 93
    return-void
.end method

.method public setAppVersion(D)V
    .locals 1
    .param p1, "num"    # D

    .prologue
    .line 99
    sput-wide p1, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->APP_VERSION:D

    .line 100
    return-void
.end method

.method public setCallbacks(Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;)V
    .locals 0
    .param p1, "myClassCallbacks"    # Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->_cuCallBacks:Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;

    .line 46
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 149
    sput-object p1, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->context:Landroid/content/Context;

    .line 150
    return-void
.end method
