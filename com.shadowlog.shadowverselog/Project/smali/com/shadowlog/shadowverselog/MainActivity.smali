.class public Lcom/shadowlog/shadowverselog/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;
.implements Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;
    }
.end annotation


# instance fields
.field private decktype_update_version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/MainActivity;->decktype_update_version:Ljava/lang/Integer;

    return-void
.end method

.method private onSuccess()V
    .locals 4

    .prologue
    .line 186
    const-string v1, "MainActivity"

    const-string v2, "Success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 189
    .local v0, "hdl":Landroid/os/Handler;
    new-instance v1, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/MainActivity$splashHandler;-><init>(Lcom/shadowlog/shadowverselog/MainActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    return-void
.end method


# virtual methods
.method public callbackMethod(ILjava/util/HashMap;)V
    .locals 4
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
    .line 60
    .local p2, "obj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 62
    const-string v2, "MainActivity"

    const-string v3, "CallBack -> Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MainActivity;->onSuccess()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 66
    const-string v2, "MainActivity"

    const-string v3, "CallBack -> Server Connection Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "alertDlg":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u30a2\u30c3\u30d7\u30c7\u30fc\u30c8\u78ba\u8a8d \u901a\u4fe1\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 69
    const-string v2, "\u30b5\u30fc\u30d0\u30fc\u3068\u306e\u901a\u4fe1\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    const-string v2, "OK"

    new-instance v3, Lcom/shadowlog/shadowverselog/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MainActivity$1;-><init>(Lcom/shadowlog/shadowverselog/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 78
    .end local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 80
    const-string v2, "MainActivity"

    const-string v3, "CallBack -> Need Update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    .restart local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u30a2\u30c3\u30d7\u30c7\u30fc\u30c8\u78ba\u8a8d \u66f4\u65b0\u30a2\u30e9\u30fc\u30c8"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    const-string v2, "\u30a2\u30d7\u30ea\u306e\u6700\u65b0\u30d0\u30fc\u30b8\u30e7\u30f3\u304c\u516c\u958b\u3055\u308c\u3066\u3044\u307e\u3059\u3002\u30a2\u30c3\u30d7\u30c7\u30fc\u30c8\u3092\u3057\u3066\u4e0b\u3055\u3044\u3002"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 84
    const-string v2, "OK"

    new-instance v3, Lcom/shadowlog/shadowverselog/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MainActivity$2;-><init>(Lcom/shadowlog/shadowverselog/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 92
    .end local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 94
    const-string v2, "MainActivity"

    const-string v3, "CallBack - DeckType Update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v2, "decktype_version"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/MainActivity;->decktype_update_version:Ljava/lang/Integer;

    .line 97
    new-instance v1, Lcom/shadowlog/shadowverselog/function/CheckDeckType;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;-><init>()V

    .line 98
    .local v1, "cdtClass":Lcom/shadowlog/shadowverselog/function/CheckDeckType;
    invoke-virtual {v1, p0}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->setCallbacks(Lcom/shadowlog/shadowverselog/function/CheckDeckType$CheckDeckTypeCallbacks;)V

    .line 99
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->setContext(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/function/CheckDeckType;->run()V

    goto/16 :goto_0

    .line 101
    .end local v1    # "cdtClass":Lcom/shadowlog/shadowverselog/function/CheckDeckType;
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 103
    const-string v2, "MainActivity"

    const-string v3, "CallBack -> onCheckData() Error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    .restart local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u30a2\u30c3\u30d7\u30c7\u30fc\u30c8\u78ba\u8a8d \u30ed\u30fc\u30ab\u30eb\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 106
    const-string v2, "\u8a2d\u5b9a\u30d5\u30a1\u30a4\u30eb\u306e\u5224\u5225\u4e2d\u306b\u30a8\u30e9\u30fc\u304c\u767a\u751f\u3057\u307e\u3057\u305f\u3002"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    const-string v2, "OK"

    new-instance v3, Lcom/shadowlog/shadowverselog/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MainActivity$3;-><init>(Lcom/shadowlog/shadowverselog/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public callbackMethod2(I)V
    .locals 5
    .param p1, "res"    # I

    .prologue
    .line 123
    if-nez p1, :cond_2

    .line 125
    const-string v2, "MainActivity"

    const-string v3, "CallBack2 -> Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/MainActivity;->decktype_update_version:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 127
    const-string v2, "CheckDeckType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decktype_version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/shadowlog/shadowverselog/MainActivity;->decktype_update_version:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v1, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->open()V

    .line 130
    const-string v2, "decktype_version"

    iget-object v3, p0, Lcom/shadowlog/shadowverselog/MainActivity;->decktype_update_version:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->doSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->close()V

    .line 133
    .end local v1    # "idb":Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
    :cond_0
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/MainActivity;->onSuccess()V

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 136
    const-string v2, "MainActivity"

    const-string v3, "CallBack -> Server Connection Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "alertDlg":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u30c7\u30c3\u30ad\u30bf\u30a4\u30d7\u66f4\u65b0 \u901a\u4fe1\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string v2, "\u30b5\u30fc\u30d0\u30fc\u3068\u306e\u901a\u4fe1\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 140
    const-string v2, "OK"

    new-instance v3, Lcom/shadowlog/shadowverselog/MainActivity$4;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MainActivity$4;-><init>(Lcom/shadowlog/shadowverselog/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 148
    .end local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 150
    const-string v2, "MainActivity"

    const-string v3, "CallBack -> setDeckType() Error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .restart local v0    # "alertDlg":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u30c7\u30c3\u30ad\u30bf\u30a4\u30d7\u66f4\u65b0 \u30ed\u30fc\u30ab\u30ebDB\u30a8\u30e9\u30fc"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 153
    const-string v2, "\u30c7\u30c3\u30ad\u30bf\u30a4\u30d7\u306e\u66f4\u65b0\u306b\u5931\u6557\u3057\u307e\u3057\u305f\u3002"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 154
    const-string v2, "OK"

    new-instance v3, Lcom/shadowlog/shadowverselog/MainActivity$5;

    invoke-direct {v3, p0}, Lcom/shadowlog/shadowverselog/MainActivity$5;-><init>(Lcom/shadowlog/shadowverselog/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected getThisVersion()D
    .locals 7

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 171
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-wide/16 v4, 0x0

    .line 173
    .local v4, "versionCode":D
    :try_start_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 174
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-double v4, v3

    .line 178
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-wide v4

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const-string v1, "MainActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/shadowlog/shadowverselog/function/CheckUpdate;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;-><init>()V

    .line 47
    .local v0, "cuClass":Lcom/shadowlog/shadowverselog/function/CheckUpdate;
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MainActivity;->getThisVersion()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->setAppVersion(D)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->setCallbacks(Lcom/shadowlog/shadowverselog/function/CheckUpdate$CheckUpdateCallbacks;)V

    .line 49
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->setContext(Landroid/content/Context;)V

    .line 50
    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/function/CheckUpdate;->run()V

    .line 52
    const-string v1, "MainActivity"

    invoke-static {p0, v1}, Lcom/shadowlog/shadowverselog/MeasurementGAManager;->sendGAScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 257
    const-string v0, "MainActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 259
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 264
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "MainActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 253
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "MainActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 247
    return-void
.end method
