.class public final Lrx/internal/operators/BlockingOperatorToIterator;
.super Ljava/lang/Object;
.source "BlockingOperatorToIterator.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIterator(Lrx/Observable;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 52
    .local v0, "notifications":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lrx/Notification<+TT;>;>;"
    invoke-virtual {p0}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v1

    new-instance v2, Lrx/internal/operators/BlockingOperatorToIterator$1;

    invoke-direct {v2, v0}, Lrx/internal/operators/BlockingOperatorToIterator$1;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 69
    new-instance v1, Lrx/internal/operators/BlockingOperatorToIterator$2;

    invoke-direct {v1, v0}, Lrx/internal/operators/BlockingOperatorToIterator$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-object v1
.end method
