.class Lcom/shadowlog/shadowverselog/model/InfoDBAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "InfoDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-static {}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/shadowlog/shadowverselog/model/InfoDBAdapter;->access$100()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 254
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 261
    const-string v0, "CREATE TABLE Information (aid INTEGER PRIMARY KEY AUTOINCREMENT,offline INTEGER NOT NULL DEFAULT 0,decktype_version INTEGER NOT NULL DEFAULT 0,newpack_date INTEGER NOT NULL DEFAULT 0,alert_message TEXT DEFAULT \'\',insert_date INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 267
    return-void
.end method
