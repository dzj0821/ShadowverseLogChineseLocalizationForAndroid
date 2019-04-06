.class final Lrx/internal/operators/BlockingOperatorToIterator$1;
.super Lrx/Subscriber;
.source "BlockingOperatorToIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/BlockingOperatorToIterator;->toIterator(Lrx/Observable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$notifications:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lrx/internal/operators/BlockingOperatorToIterator$1;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$1;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lrx/Notification;

    invoke-virtual {p0, p1}, Lrx/internal/operators/BlockingOperatorToIterator$1;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<+TT;>;"
    iget-object v0, p0, Lrx/internal/operators/BlockingOperatorToIterator$1;->val$notifications:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method
