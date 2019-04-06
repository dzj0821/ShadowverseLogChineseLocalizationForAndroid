.class public Lcom/shadowlog/shadowverselog/model/UserDBAdapter;
.super Ljava/lang/Object;
.source "UserDBAdapter.java"


# static fields
.field public static final COL_DEF_DECJID:Ljava/lang/String; = "def_Deck_id"

.field public static final COL_DEF_FORMAT:Ljava/lang/String; = "def_format"

.field public static final COL_DEF_MYDECK:Ljava/lang/String; = "def_myDeckType"

.field public static final COL_DEF_MYLEADER:Ljava/lang/String; = "def_myLeader"

.field public static final COL_MAIL:Ljava/lang/String; = "mail"

.field public static final COL_NAME:Ljava/lang/String; = "name"

.field public static final COL_PASS:Ljava/lang/String; = "pass"

.field public static final COL_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final COL_UPDATE_DATE:Ljava/lang/String; = "update_date"

.field public static final COL_USER_ID:Ljava/lang/String; = "User_id"

.field public static final COL__ID:Ljava/lang/String; = "_id"

.field public static final CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SV_USER (_id INTEGER PRIMARY KEY AUTOINCREMENT,User_id INTEGER NOT NULL DEFAULT 0,session_id TEXT NULL,name TEXT NULL,mail TEXT NULL,pass TEXT NULL,def_myLeader INTEGER NOT NULL DEFAULT 0,def_myDeckType INTEGER NOT NULL DEFAULT 0,def_format INTEGER NOT NULL DEFAULT 0,def_Deck_id INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0)"

.field private static final DATABASE_NAME:Ljava/lang/String;

.field private static final DATABASE_VER:I

.field public static final TABLE_NAME:Ljava/lang/String; = "SV_USER"


# instance fields
.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDbHelper:Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_name:Ljava/lang/String;

    sput-object v0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->DATABASE_VER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDbHelper:Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;

    .line 79
    return-void
.end method

.method private static EscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 268
    if-eqz p0, :cond_0

    .line 270
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    :cond_0
    return-object p0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 251
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDbHelper:Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;->close()V

    .line 94
    return-void
.end method

.method public deleteAll()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from SV_USER where 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public doDelete(Ljava/lang/String;)V
    .locals 3
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SV_USER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public doGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 232
    const-string v2, "select * from SV_USER;"

    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 235
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 240
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    .line 237
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 240
    goto :goto_0
.end method

.method public doInit()V
    .locals 4

    .prologue
    .line 209
    :try_start_0
    const-string v2, "select * from SV_USER where 1;"

    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 211
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doInsert(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "SQLiteException"

    const-string v3, "SQLiteException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doInsert(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public doInsert(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 108
    .local v1, "val":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "key":Ljava/lang/String;
    const-string v2, "User_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    :cond_1
    const-string v2, "session_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_3
    const-string v2, "mail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_4
    const-string v2, "pass"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_5
    const-string v2, "def_myLeader"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_6
    const-string v2, "def_myDeckType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_7
    const-string v2, "def_Deck_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_8
    const-string v2, "def_format"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "key":Ljava/lang/String;
    :cond_9
    const-string v2, "update_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SV_USER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 123
    return-void
.end method

.method public doSelect(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 134
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 138
    .local v1, "isEof":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 140
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v3, "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v4, "_id"

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v4, "User_id"

    const-string v5, "User_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v4, "session_id"

    const-string v5, "session_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v4, "name"

    const-string v5, "name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v4, "mail"

    const-string v5, "mail"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v4, "pass"

    const-string v5, "pass"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v4, "update_date"

    const-string v5, "update_date"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v4, "def_myLeader"

    const-string v5, "def_myLeader"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v4, "def_myDeckType"

    const-string v5, "def_myDeckType"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v4, "def_Deck_id"

    const-string v5, "def_Deck_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v4, "def_format"

    const-string v5, "def_format"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 161
    goto/16 :goto_0

    .line 163
    .end local v3    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 164
    return-object v2

    .line 158
    .restart local v3    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public doSelectAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 171
    const-string v0, "select * from SV_USER where 1"

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doUpdate(Ljava/util/Map;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public doUpdate(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .param p2, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v1, "val":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    .local v0, "key":Ljava/lang/String;
    const-string v2, "User_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    :cond_1
    const-string v2, "session_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_2
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_3
    const-string v2, "mail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_4
    const-string v2, "pass"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_5
    const-string v2, "def_myLeader"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_6
    const-string v2, "def_myDeckType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_7
    const-string v2, "def_Deck_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_8
    const-string v2, "def_format"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v0    # "key":Ljava/lang/String;
    :cond_9
    const-string v2, "update_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SV_USER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 257
    return-void
.end method

.method public exec(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDbHelper:Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    invoke-virtual {p0}, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->doInit()V

    .line 87
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/UserDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 254
    return-void
.end method
