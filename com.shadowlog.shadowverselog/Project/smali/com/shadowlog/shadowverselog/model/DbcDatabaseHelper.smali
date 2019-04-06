.class public Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbcDatabaseHelper.java"


# static fields
.field public static final COL_DEF_DECJID:Ljava/lang/String; = "def_Deck_id"

.field public static final COL_DEF_FORMAT:Ljava/lang/String; = "def_format"

.field public static final COL_DEF_MYDECK:Ljava/lang/String; = "def_myDeckType"

.field public static final COL_DEF_MYLEADER:Ljava/lang/String; = "def_myLeader"

.field private static final DATABASE_NAME:Ljava/lang/String;

.field private static final DATABASE_VER:I

.field public static final DECKTYPE_COL_AID:Ljava/lang/String; = "_id"

.field public static final DECKTYPE_COL_DID:Ljava/lang/String; = "did"

.field public static final DECKTYPE_COL_LEADER:Ljava/lang/String; = "leader"

.field public static final DECKTYPE_COL_NAME:Ljava/lang/String; = "name"

.field public static final DECKTYPE_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SV_DECKTYPE (_id INTEGER PRIMARY KEY AUTOINCREMENT,did INTEGER NOT NULL DEFAULT 0,leader INTEGER NOT NULL DEFAULT 0,name TEXT NOT NULL DEFAULT \'\')"

.field public static final DECKTYPE_TABLE_NAME:Ljava/lang/String; = "SV_DECKTYPE"

.field public static final LABEL_COL_AID:Ljava/lang/String; = "aid"

.field public static final LABEL_COL_COLOR:Ljava/lang/String; = "color"

.field public static final LABEL_COL_DECK_ID:Ljava/lang/String; = "Deck_id"

.field public static final LABEL_COL_DELETE_FLAG:Ljava/lang/String; = "delete_flag"

.field public static final LABEL_COL_GIVE_DATE:Ljava/lang/String; = "give_date"

.field public static final LABEL_COL_INSERT_DATE:Ljava/lang/String; = "insert_date"

.field public static final LABEL_COL_LABEL:Ljava/lang/String; = "label"

.field public static final LABEL_COL_LOCAL_UPDATE_DATE:Ljava/lang/String; = "local_date"

.field public static final LABEL_COL_USER_ID:Ljava/lang/String; = "User_id"

.field public static final LABEL_COL__ID:Ljava/lang/String; = "_id"

.field public static final LABEL_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SV_MYDECK_LABEL (_id INTEGER PRIMARY KEY AUTOINCREMENT,aid INTEGER UNIQUE NOT NULL DEFAULT 0,User_id INTEGER NOT NULL DEFAULT 0,Deck_id INTEGER NOT NULL DEFAULT 0,label TEXT NOT NULL DEFAULT \'\',color INTEGER NOT NULL DEFAULT 0,give_date INTEGER NOT NULL DEFAULT 0,insert_date INTEGER NOT NULL DEFAULT 0,delete_flag INTEGER NOT NULL DEFAULT 0,local_date INTEGER NOT NULL DEFAULT 0)"

.field public static final LABEL_TABLE_NAME:Ljava/lang/String; = "SV_MYDECK_LABEL"

.field public static final MYDECK_COL_AID:Ljava/lang/String; = "aid"

.field public static final MYDECK_COL_DECK_URL:Ljava/lang/String; = "deck_url"

.field public static final MYDECK_COL_DELETE_FLAG:Ljava/lang/String; = "delete_flag"

.field public static final MYDECK_COL_HIDDEN_FLAG:Ljava/lang/String; = "hidden_flag"

.field public static final MYDECK_COL_INSERT_DATE:Ljava/lang/String; = "insert_date"

.field public static final MYDECK_COL_LOCAL_UPDATE_DATE:Ljava/lang/String; = "local_date"

.field public static final MYDECK_COL_MEMO:Ljava/lang/String; = "memo"

.field public static final MYDECK_COL_MYDECKTYPE:Ljava/lang/String; = "myDeckType"

.field public static final MYDECK_COL_MYLEADER:Ljava/lang/String; = "myLeader"

.field public static final MYDECK_COL_NAME:Ljava/lang/String; = "name"

.field public static final MYDECK_COL_PUB_FLAG:Ljava/lang/String; = "pub_flag"

.field public static final MYDECK_COL_UPDATE_DATE:Ljava/lang/String; = "update_date"

.field public static final MYDECK_COL_USER_ID:Ljava/lang/String; = "User_id"

.field public static final MYDECK_COL__ID:Ljava/lang/String; = "_id"

.field public static final MYDECK_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SV_MYDECK (_id INTEGER PRIMARY KEY AUTOINCREMENT,aid INTEGER UNIQUE NOT NULL DEFAULT 0,User_id INTEGER NOT NULL DEFAULT 0,myLeader INTEGER NOT NULL DEFAULT 0,myDeckType INTEGER NOT NULL DEFAULT 0,name TEXT NOT NULL DEFAULT \'\',deck_url TEXT NOT NULL DEFAULT \'\',memo TEXT NOT NULL DEFAULT \'\',pub_flag INTEGER NOT NULL DEFAULT 0,hidden_flag INTEGER NOT NULL DEFAULT 0,delete_flag INTEGER NOT NULL DEFAULT 0,insert_date INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0,local_date INTEGER NOT NULL DEFAULT 0)"

.field public static final MYDECK_TABLE_NAME:Ljava/lang/String; = "SV_MYDECK"

.field public static final RECORD2_COL_AID:Ljava/lang/String; = "aid"

.field public static final RECORD2_COL_DECK_URL:Ljava/lang/String; = "deck_url"

.field public static final RECORD2_COL_DELETE_FLAG:Ljava/lang/String; = "delete_flag"

.field public static final RECORD2_COL_INSERT_DATE:Ljava/lang/String; = "insert_date"

.field public static final RECORD2_COL_LOCAL_UPDATE_DATE:Ljava/lang/String; = "local_date"

.field public static final RECORD2_COL_MEMO:Ljava/lang/String; = "memo"

.field public static final RECORD2_COL_MYLEADER:Ljava/lang/String; = "myLeader"

.field public static final RECORD2_COL_PLAY_DATE:Ljava/lang/String; = "play_date"

.field public static final RECORD2_COL_RESULT:Ljava/lang/String; = "result"

.field public static final RECORD2_COL_UPDATE_DATE:Ljava/lang/String; = "update_date"

.field public static final RECORD2_COL_USER_ID:Ljava/lang/String; = "User_id"

.field public static final RECORD2_COL__ID:Ljava/lang/String; = "_id"

.field public static final RECORD2_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SV_RECORD_2PICK (_id INTEGER PRIMARY KEY AUTOINCREMENT,aid INTEGER UNIQUE NOT NULL DEFAULT 0,User_id INTEGER NOT NULL DEFAULT 0,myLeader INTEGER NOT NULL DEFAULT 0,result INTEGER NOT NULL DEFAULT 0,deck_url TEXT NOT NULL DEFAULT \'\',memo TEXT NOT NULL DEFAULT \'\',play_date INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0,insert_date INTEGER NOT NULL DEFAULT 0,delete_flag INTEGER NOT NULL DEFAULT 0,local_date INTEGER NOT NULL DEFAULT 0)"

.field public static final RECORD2_TABLE_NAME:Ljava/lang/String; = "SV_RECORD_2PICK"

.field public static final RECORD_COL_AID:Ljava/lang/String; = "aid"

.field public static final RECORD_COL_DECK_ID:Ljava/lang/String; = "Deck_id"

.field public static final RECORD_COL_DELETE_FLAG:Ljava/lang/String; = "delete_flag"

.field public static final RECORD_COL_FORMAT:Ljava/lang/String; = "format"

.field public static final RECORD_COL_INSERT_DATE:Ljava/lang/String; = "insert_date"

.field public static final RECORD_COL_LOCAL_UPDATE_DATE:Ljava/lang/String; = "local_date"

.field public static final RECORD_COL_MEMO:Ljava/lang/String; = "memo"

.field public static final RECORD_COL_MYDECKTYPE:Ljava/lang/String; = "myDeckType"

.field public static final RECORD_COL_MYLEADER:Ljava/lang/String; = "myLeader"

.field public static final RECORD_COL_ORD:Ljava/lang/String; = "ord"

.field public static final RECORD_COL_PLAY_DATE:Ljava/lang/String; = "play_date"

.field public static final RECORD_COL_RESULT:Ljava/lang/String; = "result"

.field public static final RECORD_COL_TURN:Ljava/lang/String; = "turn"

.field public static final RECORD_COL_UPDATE_DATE:Ljava/lang/String; = "update_date"

.field public static final RECORD_COL_USER_ID:Ljava/lang/String; = "User_id"

.field public static final RECORD_COL_VSDECKTYPE:Ljava/lang/String; = "vsDeckType"

.field public static final RECORD_COL_VSLEADER:Ljava/lang/String; = "vsLeader"

.field public static final RECORD_COL__ID:Ljava/lang/String; = "_id"

.field public static final RECORD_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SV_RECORD (_id INTEGER PRIMARY KEY AUTOINCREMENT,aid INTEGER UNIQUE NOT NULL DEFAULT 0,User_id INTEGER NOT NULL DEFAULT 0,Deck_id INTEGER NOT NULL DEFAULT 0,myLeader INTEGER NOT NULL DEFAULT 0,myDeckType INTEGER NOT NULL DEFAULT 0,vsLeader INTEGER NOT NULL DEFAULT 0,vsDeckType INTEGER NOT NULL DEFAULT 0,format INTEGER NOT NULL DEFAULT 0,ord INTEGER NOT NULL DEFAULT 0,result INTEGER NOT NULL DEFAULT 0,turn INTEGER NOT NULL DEFAULT 0,memo TEXT NOT NULL DEFAULT \'\',delete_flag INTEGER NOT NULL DEFAULT 0,play_date INTEGER NOT NULL DEFAULT 0,insert_date INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0,local_date INTEGER NOT NULL DEFAULT 0)"

.field public static final RECORD_TABLE_NAME:Ljava/lang/String; = "SV_RECORD"

.field public static final USER_COL_MAIL:Ljava/lang/String; = "mail"

.field public static final USER_COL_NAME:Ljava/lang/String; = "name"

.field public static final USER_COL_PASS:Ljava/lang/String; = "pass"

.field public static final USER_COL_SESSION_ID:Ljava/lang/String; = "session_id"

.field public static final USER_COL_UPDATE_DATE:Ljava/lang/String; = "update_date"

.field public static final USER_COL_USER_ID:Ljava/lang/String; = "User_id"

.field public static final USER_COL__ID:Ljava/lang/String; = "_id"

.field public static final USER_CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SV_USER (_id INTEGER PRIMARY KEY AUTOINCREMENT,User_id INTEGER NOT NULL DEFAULT 0,session_id TEXT NOT NULL DEFAULT \'\',name TEXT NOT NULL DEFAULT \'\',mail TEXT NOT NULL DEFAULT \'\',pass TEXT NOT NULL DEFAULT \'\',def_myLeader INTEGER NOT NULL DEFAULT 0,def_myDeckType INTEGER NOT NULL DEFAULT 0,def_format INTEGER NOT NULL DEFAULT 0,def_Deck_id INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0)"

.field public static final USER_TABLE_NAME:Ljava/lang/String; = "SV_USER"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_name:Ljava/lang/String;

    sput-object v0, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;->DATABASE_VER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    sget-object v0, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;->DATABASE_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Lcom/shadowlog/shadowverselog/model/DbcDatabaseHelper;->DATABASE_VER:I

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 229
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 239
    const-string v0, "CREATE TABLE SV_USER (_id INTEGER PRIMARY KEY AUTOINCREMENT,User_id INTEGER NOT NULL DEFAULT 0,session_id TEXT NOT NULL DEFAULT \'\',name TEXT NOT NULL DEFAULT \'\',mail TEXT NOT NULL DEFAULT \'\',pass TEXT NOT NULL DEFAULT \'\',def_myLeader INTEGER NOT NULL DEFAULT 0,def_myDeckType INTEGER NOT NULL DEFAULT 0,def_format INTEGER NOT NULL DEFAULT 0,def_Deck_id INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    const-string v0, "CREATE TABLE SV_DECKTYPE (_id INTEGER PRIMARY KEY AUTOINCREMENT,did INTEGER NOT NULL DEFAULT 0,leader INTEGER NOT NULL DEFAULT 0,name TEXT NOT NULL DEFAULT \'\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 241
    const-string v0, "CREATE TABLE SV_RECORD (_id INTEGER PRIMARY KEY AUTOINCREMENT,aid INTEGER UNIQUE NOT NULL DEFAULT 0,User_id INTEGER NOT NULL DEFAULT 0,Deck_id INTEGER NOT NULL DEFAULT 0,myLeader INTEGER NOT NULL DEFAULT 0,myDeckType INTEGER NOT NULL DEFAULT 0,vsLeader INTEGER NOT NULL DEFAULT 0,vsDeckType INTEGER NOT NULL DEFAULT 0,format INTEGER NOT NULL DEFAULT 0,ord INTEGER NOT NULL DEFAULT 0,result INTEGER NOT NULL DEFAULT 0,turn INTEGER NOT NULL DEFAULT 0,memo TEXT NOT NULL DEFAULT \'\',delete_flag INTEGER NOT NULL DEFAULT 0,play_date INTEGER NOT NULL DEFAULT 0,insert_date INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0,local_date INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v0, "CREATE TABLE SV_MYDECK (_id INTEGER PRIMARY KEY AUTOINCREMENT,aid INTEGER UNIQUE NOT NULL DEFAULT 0,User_id INTEGER NOT NULL DEFAULT 0,myLeader INTEGER NOT NULL DEFAULT 0,myDeckType INTEGER NOT NULL DEFAULT 0,name TEXT NOT NULL DEFAULT \'\',deck_url TEXT NOT NULL DEFAULT \'\',memo TEXT NOT NULL DEFAULT \'\',pub_flag INTEGER NOT NULL DEFAULT 0,hidden_flag INTEGER NOT NULL DEFAULT 0,delete_flag INTEGER NOT NULL DEFAULT 0,insert_date INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0,local_date INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string v0, "CREATE TABLE SV_MYDECK_LABEL (_id INTEGER PRIMARY KEY AUTOINCREMENT,aid INTEGER UNIQUE NOT NULL DEFAULT 0,User_id INTEGER NOT NULL DEFAULT 0,Deck_id INTEGER NOT NULL DEFAULT 0,label TEXT NOT NULL DEFAULT \'\',color INTEGER NOT NULL DEFAULT 0,give_date INTEGER NOT NULL DEFAULT 0,insert_date INTEGER NOT NULL DEFAULT 0,delete_flag INTEGER NOT NULL DEFAULT 0,local_date INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 244
    const-string v0, "CREATE TABLE SV_RECORD_2PICK (_id INTEGER PRIMARY KEY AUTOINCREMENT,aid INTEGER UNIQUE NOT NULL DEFAULT 0,User_id INTEGER NOT NULL DEFAULT 0,myLeader INTEGER NOT NULL DEFAULT 0,result INTEGER NOT NULL DEFAULT 0,deck_url TEXT NOT NULL DEFAULT \'\',memo TEXT NOT NULL DEFAULT \'\',play_date INTEGER NOT NULL DEFAULT 0,update_date INTEGER NOT NULL DEFAULT 0,insert_date INTEGER NOT NULL DEFAULT 0,delete_flag INTEGER NOT NULL DEFAULT 0,local_date INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 250
    return-void
.end method
