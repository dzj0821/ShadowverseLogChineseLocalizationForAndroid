.class public Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;
.super Ljava/lang/Object;
.source "DeckTypeDBAdapter.java"


# static fields
.field public static final COL_DID:Ljava/lang/String; = "did"

.field public static final COL_LEADER:Ljava/lang/String; = "leader"

.field public static final COL_NAME:Ljava/lang/String; = "name"

.field public static final COL__ID:Ljava/lang/String; = "_id"

.field public static final CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SV_DECKTYPE (_id INTEGER PRIMARY KEY AUTOINCREMENT,did INTEGER NOT NULL DEFAULT 0,leader INTEGER NOT NULL DEFAULT 0,name TEXT NULL)"

.field private static final DATABASE_NAME:Ljava/lang/String;

.field private static final DATABASE_VER:I

.field public static final TABLE_NAME:Ljava/lang/String; = "SV_DECKTYPE"


# instance fields
.field protected mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDbHelper:Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_name:Ljava/lang/String;

    sput-object v0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->DATABASE_VER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDbHelper:Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;

    .line 57
    return-void
.end method

.method private static EscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 187
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    return-object p0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 169
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDbHelper:Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;->close()V

    .line 71
    return-void
.end method

.method public deleteAll()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from SV_DECKTYPE where 1"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public doCount()I
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SV_DECKTYPE"

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 161
    .local v0, "count":J
    long-to-int v2, v0

    return v2
.end method

.method public doDelete(Ljava/lang/String;)V
    .locals 3
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SV_DECKTYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 154
    return-void
.end method

.method public doInsert(Ljava/util/Map;)V
    .locals 5
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
    .line 84
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v1, "val":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "key":Ljava/lang/String;
    const-string v2, "did"

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

    .line 88
    :cond_1
    const-string v2, "leader"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    :cond_2
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SV_DECKTYPE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 92
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
    .line 100
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 107
    .local v1, "isEof":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v3, "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v4, "_id"

    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v4, "did"

    const-string v5, "did"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "leader"

    const-string v5, "leader"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "name"

    const-string v5, "name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    .line 122
    goto :goto_0

    .line 124
    .end local v3    # "row":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 125
    invoke-virtual {v2}, Ljava/util/List;->toString()Ljava/lang/String;
    move-result-object v1
    const-string v0, "dzj0821"
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    return-object v2

    .line 119
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
    .line 132
    const-string v0, "select * from SV_DECKTYPE where 1"

    invoke-virtual {p0, v0}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->doSelect(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doUpdate(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
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
    .line 139
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 140
    .local v1, "val":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "key":Ljava/lang/String;
    const-string v2, "did"

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

    .line 143
    :cond_1
    const-string v2, "leader"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    :cond_2
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->EscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SV_DECKTYPE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 175
    return-void
.end method

.method public exec(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public open()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDbHelper:Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;

    invoke-virtual {v0}, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/model/DeckTypeDBAdapter;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 172
    return-void
.end method
