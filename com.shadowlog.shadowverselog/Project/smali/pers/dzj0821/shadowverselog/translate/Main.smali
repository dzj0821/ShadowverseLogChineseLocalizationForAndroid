.class public Lpers/dzj0821/shadowverselog/translate/Main;
.super Ljava/lang/Object;

# direct methods
.method public constructor <init>()V
    .locals 0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# static fields
.field public static translateJS:Ljava/lang/String;
.field public static webviewChanged:Z

# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    const-string v0, "javascript:(function(){})()"
    sput-object v0, Lpers/dzj0821/shadowverselog/translate/Main;->translateJS:Ljava/lang/String;
    return-void
.end method
                                   