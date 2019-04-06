.class Lrx/Observable$6;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->count()Lrx/Observable;
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
        "Ljava/lang/Integer;",
        "TT;",
        "Ljava/lang/Integer;",
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
    .line 3577
    .local p0, "this":Lrx/Observable$6;, "Lrx/Observable.6;"
    iput-object p1, p0, Lrx/Observable$6;->this$0:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1
    .param p1, "t1"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 3580
    .local p0, "this":Lrx/Observable$6;, "Lrx/Observable.6;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3577
    .local p0, "this":Lrx/Observable$6;, "Lrx/Observable.6;"
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lrx/Observable$6;->call(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
