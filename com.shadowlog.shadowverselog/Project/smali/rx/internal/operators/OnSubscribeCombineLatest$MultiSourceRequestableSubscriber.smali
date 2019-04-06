.class final Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeCombineLatest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeCombineLatest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiSourceRequestableSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final emitted:Ljava/util/concurrent/atomic/AtomicLong;

.field hasValue:Z

.field final index:I

.field final producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILrx/Subscriber;Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "initial"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    .local p3, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p4, "producer":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer<TT;TR;>;"
    invoke-direct {p0, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->emitted:Ljava/util/concurrent/atomic/AtomicLong;

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->hasValue:Z

    .line 227
    iput p1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->index:I

    .line 228
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    .line 229
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->request(J)V

    .line 230
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 240
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    iget v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->index:I

    iget-boolean v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->hasValue:Z

    invoke-virtual {v0, v1, v2}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onCompleted(IZ)V

    .line 241
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 245
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onError(Ljava/lang/Throwable;)V

    .line 246
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->hasValue:Z

    .line 251
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->emitted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 252
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->producer:Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;

    iget v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->index:I

    invoke-virtual {v1, v2, p1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceProducer;->onNext(ILjava/lang/Object;)Z

    move-result v0

    .line 253
    .local v0, "emitted":Z
    if-nez v0, :cond_0

    .line 254
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->request(J)V

    .line 256
    :cond_0
    return-void
.end method

.method public requestUpTo(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 233
    .local p0, "this":Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;, "Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber<TT;TR;>;"
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->emitted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 234
    .local v0, "r":J
    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->request(J)V

    .line 235
    iget-object v2, p0, Lrx/internal/operators/OnSubscribeCombineLatest$MultiSourceRequestableSubscriber;->emitted:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 236
    return-void
.end method
