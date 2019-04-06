.class public Lcom/shadowlog/shadowverselog/lib/Defines;
.super Ljava/lang/Object;
.source "Defines.java"


# static fields
.field public static app_name:Ljava/lang/String;

.field public static check_xml:Ljava/lang/String;

.field public static db_name:Ljava/lang/String;

.field public static db_version:Ljava/lang/Integer;

.field public static dbc_name:Ljava/lang/String;

.field public static dbc_version:Ljava/lang/Integer;

.field public static deck_type_xml:Ljava/lang/String;

.field public static format:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static leader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static leaderColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static packagename:Ljava/lang/String;

.field public static res:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static site_url:Ljava/lang/String;

.field public static thumbResource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static turn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static youbi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 12
    const-string v0, "\u30a2\u30d7\u30ea\u30b1\u30fc\u30b7\u30e7\u30f3\u540d"

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->app_name:Ljava/lang/String;

    .line 15
    const-string v0, "data.db"

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->db_name:Ljava/lang/String;

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->db_version:Ljava/lang/Integer;

    .line 20
    const-string v0, "data_cache.db"

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_name:Ljava/lang/String;

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->dbc_version:Ljava/lang/Integer;

    .line 24
    const-string v0, "https://shadowlog.com/"

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->site_url:Ljava/lang/String;

    .line 26
    const-string v0, "com.shadowlog.shadowverselog"

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->packagename:Ljava/lang/String;

    .line 29
    const-string v0, "https://shadowlog.com/app/update.xml"

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->check_xml:Ljava/lang/String;

    .line 31
    const-string v0, "https://shadowlog.com/app/deck_type.xml"

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->deck_type_xml:Ljava/lang/String;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u65e5"

    aput-object v2, v0, v1

    const-string v1, "\u6708"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "\u706b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6c34"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6728"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u91d1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u571f"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->youbi:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/Defines$1;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/lib/Defines$1;-><init>()V

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->ord:Ljava/util/HashMap;

    .line 43
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/Defines$2;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/lib/Defines$2;-><init>()V

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->res:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/Defines$3;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/lib/Defines$3;-><init>()V

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->format:Ljava/util/HashMap;

    .line 64
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/Defines$4;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/lib/Defines$4;-><init>()V

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->turn:Ljava/util/HashMap;

    .line 77
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/Defines$5;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/lib/Defines$5;-><init>()V

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->leaderColor:Ljava/util/HashMap;

    .line 89
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/Defines$6;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/lib/Defines$6;-><init>()V

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->leader:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/shadowlog/shadowverselog/lib/Defines$7;

    invoke-direct {v0}, Lcom/shadowlog/shadowverselog/lib/Defines$7;-><init>()V

    sput-object v0, Lcom/shadowlog/shadowverselog/lib/Defines;->thumbResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
