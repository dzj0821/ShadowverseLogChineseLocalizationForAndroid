.class public Lcom/shadowlog/shadowverselog/SyncActivity;
.super Landroid/app/Activity;
.source "SyncActivity.java"


# static fields
.field private static final END_POINT:Ljava/lang/String; = "https://shadowlog.com"


# instance fields
.field private fat:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/SyncActivity;->fat:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    const-string v2, "SyncActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "finishActionType"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/shadowlog/shadowverselog/SyncActivity;->fat:Ljava/lang/Integer;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/SyncActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/function/CheckLogin;->run(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->onSynchronize()V

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/shadowlog/shadowverselog/LoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v1, "intent_next":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/shadowlog/shadowverselog/SyncActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "SyncActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 233
    return-void
.end method

.method public onFinish()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/shadowlog/shadowverselog/SyncActivity;->fat:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/shadowlog/shadowverselog/MyPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/SyncActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->finish()V

    .line 205
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "SyncActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 224
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "SyncActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 212
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "SyncActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "SyncActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 218
    return-void
.end method

.method protected onSyncNextFunc(Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;)V
    .locals 8
    .param p1, "data"    # Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;

    .prologue
    .line 136
    const-string v5, "SyncActivity"

    const-string v6, "onSyncNextFunc"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    const-string v5, "SyncActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download Record : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v4, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 142
    .local v4, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    .line 143
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->beginTransaction()V

    .line 144
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 145
    .local v0, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v0}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->setOriginalData(Ljava/util/Map;)V

    goto :goto_0

    .line 147
    .end local v0    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->setTransactionSuccessful()V

    .line 148
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->endTransaction()V

    .line 149
    invoke-virtual {v4}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 152
    .end local v4    # "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    :cond_1
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    const-string v5, "SyncActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download MyDeck : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v2, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 156
    .local v2, "mdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    .line 157
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->beginTransaction()V

    .line 158
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 159
    .restart local v0    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->setOriginalData(Ljava/util/Map;)V

    goto :goto_1

    .line 161
    .end local v0    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->setTransactionSuccessful()V

    .line 162
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->endTransaction()V

    .line 163
    invoke-virtual {v2}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 166
    .end local v2    # "mdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    :cond_3
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck_Label()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck_Label()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_5

    .line 167
    const-string v5, "SyncActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download MyDeck_Label : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck_Label()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v1, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;-><init>(Landroid/content/Context;)V

    .line 170
    .local v1, "ldb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    .line 171
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->beginTransaction()V

    .line 172
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putMyDeck_Label()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 173
    .restart local v0    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->setOriginalData(Ljava/util/Map;)V

    goto :goto_2

    .line 175
    .end local v0    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->setTransactionSuccessful()V

    .line 176
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->endTransaction()V

    .line 177
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    .line 180
    .end local v1    # "ldb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    :cond_5
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord_2pick()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord_2pick()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_7

    .line 181
    const-string v5, "SyncActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download Record_2pick : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord_2pick()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v3, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;

    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;-><init>(Landroid/content/Context;)V

    .line 184
    .local v3, "r2db":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->open()V

    .line 185
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->beginTransaction()V

    .line 186
    invoke-virtual {p1}, Lcom/shadowlog/shadowverselog/struct/SyncResultStruct;->putRecord_2pick()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 187
    .restart local v0    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->setOriginalData(Ljava/util/Map;)V

    goto :goto_3

    .line 189
    .end local v0    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->setTransactionSuccessful()V

    .line 190
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->endTransaction()V

    .line 191
    invoke-virtual {v3}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->close()V

    .line 193
    .end local v3    # "r2db":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    :cond_7
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->onFinish()V

    .line 194
    return-void
.end method

.method protected onSynchronize()V
    .locals 17

    .prologue
    .line 67
    const-string v15, "SyncActivity"

    const-string v16, "onSynchronize"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v14, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;-><init>(Landroid/content/Context;)V

    .line 71
    .local v14, "udb":Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
    invoke-virtual {v14}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->open()V

    .line 72
    const-string v15, "User_id"

    invoke-virtual {v14, v15}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    .local v2, "userID":Ljava/lang/Integer;
    const-string v15, "session_id"

    invoke-virtual {v14, v15}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "sessionID":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->close()V

    .line 77
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 78
    .local v4, "last_record":Ljava/lang/Integer;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 79
    .local v5, "last_mydeck":Ljava/lang/Integer;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 80
    .local v6, "last_label":Ljava/lang/Integer;
    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 82
    .local v7, "last_2pick":Ljava/lang/Integer;
    new-instance v12, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;-><init>(Landroid/content/Context;)V

    .line 83
    .local v12, "rdb":Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;
    invoke-virtual {v12}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->open()V

    invoke-virtual {v12}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->recentlyUpdate()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12}, Lcom/shadowlog/shadowverselog/model/RecordDBAdapter;->close()V

    .line 85
    new-instance v10, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v10, v15}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;-><init>(Landroid/content/Context;)V

    .line 86
    .local v10, "mdb":Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;
    invoke-virtual {v10}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->open()V

    invoke-virtual {v10}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->recentlyUpdate()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10}, Lcom/shadowlog/shadowverselog/model/MydeckDBAdapter;->close()V

    .line 88
    new-instance v9, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v9, v15}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;-><init>(Landroid/content/Context;)V

    .line 89
    .local v9, "ldb":Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;
    invoke-virtual {v9}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->open()V

    invoke-virtual {v9}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->recentlyUpdate()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9}, Lcom/shadowlog/shadowverselog/model/LabelDBAdapter;->close()V

    .line 91
    new-instance v11, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/shadowlog/shadowverselog/SyncActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v11, v15}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;-><init>(Landroid/content/Context;)V

    .line 92
    .local v11, "r2db":Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;
    invoke-virtual {v11}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->open()V

    invoke-virtual {v11}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->recentlyUpdate()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11}, Lcom/shadowlog/shadowverselog/model/Record2DBAdapter;->close()V

    .line 94
    new-instance v15, Lretrofit2/Retrofit$Builder;

    invoke-direct {v15}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v16, "https://shadowlog.com"

    .line 95
    invoke-virtual/range {v15 .. v16}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v15

    .line 96
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v15

    .line 97
    invoke-virtual {v15}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v13

    .line 98
    .local v13, "retrofit":Lretrofit2/Retrofit;
    const-class v15, Lcom/shadowlog/shadowverselog/api/SyncApi;

    invoke-virtual {v13, v15}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shadowlog/shadowverselog/api/SyncApi;

    .line 99
    .local v1, "api":Lcom/shadowlog/shadowverselog/api/SyncApi;
    invoke-interface/range {v1 .. v7}, Lcom/shadowlog/shadowverselog/api/SyncApi;->getSyncData(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object v8

    .line 107
    .local v8, "call":Lretrofit2/Call;, "Lretrofit2/Call<Lcom/shadowlog/shadowverselog/struct/SyncStruct;>;"
    new-instance v15, Lcom/shadowlog/shadowverselog/SyncActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/shadowlog/shadowverselog/SyncActivity$1;-><init>(Lcom/shadowlog/shadowverselog/SyncActivity;)V

    invoke-interface {v8, v15}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 129
    return-void
.end method
