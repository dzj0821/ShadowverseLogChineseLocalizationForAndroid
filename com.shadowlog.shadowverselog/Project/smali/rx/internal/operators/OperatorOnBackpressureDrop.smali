.class public Lrx/internal/operators/OperatorOnBackpressureDrop;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"

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
        "<TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorOnBackpressureDrop;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorOnBackpressureDrop;, "Lrx/internal/operators/OperatorOnBackpressureDrop<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 30
    .local v0, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureDrop$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorOnBackpressureDrop$1;-><init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 38
    new-instance v1, Lrx/internal/operators/OperatorOnBackpressureDrop$2;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/internal/operators/OperatorOnBackpressureDrop$2;-><init>(Lrx/internal/operators/OperatorOnBackpressureDrop;Lrx/Subscriber;Lrx/Subscriber;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-object v1
.end method
