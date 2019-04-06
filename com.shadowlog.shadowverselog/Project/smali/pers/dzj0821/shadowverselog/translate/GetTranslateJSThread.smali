.class public Lpers/dzj0821/shadowverselog/translate/GetTranslateJSThread;
.super Ljava/lang/Thread;

# instance fields
.field private splashHandler:Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;

# direct methods
.method public constructor <init>(Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;)V
    .locals 2
    .param p1, "splashHandler"
    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
    iput-object p1, p0, Lpers/dzj0821/shadowverselog/translate/GetTranslateJSThread;->splashHandler:Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .prologue
    :try_start_0
    new-instance v4, Ljava/net/URL;
    const-string v5, "https://dzj0821.github.io/ShadowverseLogChineseLocalizationForAndroid/translate/translate.js"
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    new-instance v3, Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    move-result-object v6
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    const/4 v2, 0x0
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :goto_1b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v2
    if-nez v2, :cond_32
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    sput-object v5, Lpers/dzj0821/shadowverselog/translate/Main;->translateJS:Ljava/lang/String;
    :goto_2a
    iget-object v5, p0, Lpers/dzj0821/shadowverselog/translate/GetTranslateJSThread;->splashHandler:Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;
    invoke-virtual {v5}, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;->hackedRun()V
    return-void
    :cond_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :goto_1b
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36
    :catch_36
    move-exception v1
    goto :goto_2a
.end method
