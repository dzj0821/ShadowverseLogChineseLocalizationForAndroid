.class Lrx/Observable$7;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->countLong()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Long;",
        "TT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .locals 0
    .param p1, "this$0"    # Lrx/Observable;

    .prologue
    .line 3604
    .local p0, "this":Lrx/Observable$7;, "Lrx/Observable.7;"
    iput-object p1, p0, Lrx/Observable$7;->this$0:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .param p1, "t1"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TT;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 3607
    .local p0, "this":Lrx/Observable$7;, "Lrx/Observable.7;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3604
    .local p0, "this":Lrx/Observable$7;, "Lrx/Observable.7;"
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lrx/Observable$7;->call(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
