.class public final Lrx/internal/operators/OperatorAny;
.super Ljava/lang/Object;
.source "OperatorAny.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Ljava/lang/Boolean;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final predicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final returnOnEmpty:Z


# direct methods
.method public constructor <init>(Lrx/functions/Func1;Z)V
    .locals 0
    .param p2, "returnOnEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorAny;, "Lrx/internal/operators/OperatorAny<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorAny;->predicate:Lrx/functions/Func1;

    .line 34
    iput-boolean p2, p0, Lrx/internal/operators/OperatorAny;->returnOnEmpty:Z

    .line 35
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorAny;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorAny;

    .prologue
    .line 28
    iget-object v0, p0, Lrx/internal/operators/OperatorAny;->predicate:Lrx/functions/Func1;

    return-object v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorAny;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorAny;

    .prologue
    .line 28
    iget-boolean v0, p0, Lrx/internal/operators/OperatorAny;->returnOnEmpty:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorAny;, "Lrx/internal/operators/OperatorAny<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorAny;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorAny;, "Lrx/internal/operators/OperatorAny<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorAny$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorAny$1;-><init>(Lrx/internal/operators/OperatorAny;Lrx/Subscriber;)V

    .line 77
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 78
    return-object v0
.end method
