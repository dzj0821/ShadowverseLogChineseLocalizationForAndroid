.class Lrx/internal/operators/OperatorPublish$RequestHandler;
.super Ljava/lang/Object;
.source "OperatorPublish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<",
            "Lrx/internal/operators/OperatorPublish$RequestHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final notifier:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final state:Lrx/internal/operators/OperatorPublish$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorPublish$State",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile wip:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 300
    const-class v0, Lrx/internal/operators/OperatorPublish$RequestHandler;

    const-string v1, "wip"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorPublish$RequestHandler;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 293
    .local p0, "this":Lrx/internal/operators/OperatorPublish$RequestHandler;, "Lrx/internal/operators/OperatorPublish$RequestHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->notifier:Lrx/internal/operators/NotificationLite;

    .line 296
    new-instance v0, Lrx/internal/operators/OperatorPublish$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorPublish$State;-><init>(Lrx/internal/operators/OperatorPublish$1;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorPublish$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorPublish$1;

    .prologue
    .line 293
    .local p0, "this":Lrx/internal/operators/OperatorPublish$RequestHandler;, "Lrx/internal/operators/OperatorPublish$RequestHandler<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorPublish$RequestHandler;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorPublish$RequestHandler;)Lrx/internal/operators/OperatorPublish$State;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorPublish$RequestHandler;

    .prologue
    .line 293
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    return-object v0
.end method

.method static synthetic access$400(Lrx/internal/operators/OperatorPublish$RequestHandler;)Lrx/internal/operators/NotificationLite;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorPublish$RequestHandler;

    .prologue
    .line 293
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->notifier:Lrx/internal/operators/NotificationLite;

    return-object v0
.end method

.method private requestMoreAfterEmission(I)V
    .locals 8
    .param p1, "emitted"    # I

    .prologue
    .line 325
    .local p0, "this":Lrx/internal/operators/OperatorPublish$RequestHandler;, "Lrx/internal/operators/OperatorPublish$RequestHandler<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorPublish$State;->getOrigin()Lrx/internal/operators/OperatorPublish$OriginSubscriber;

    move-result-object v0

    .line 326
    .local v0, "origin":Lrx/internal/operators/OperatorPublish$OriginSubscriber;, "Lrx/internal/operators/OperatorPublish$OriginSubscriber<TT;>;"
    if-lez p1, :cond_0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {v0}, Lrx/internal/operators/OperatorPublish$OriginSubscriber;->access$700(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    neg-int v4, p1

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 328
    .local v2, "r":J
    invoke-static {v0}, Lrx/internal/operators/OperatorPublish$OriginSubscriber;->access$800(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 329
    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-long v4, v1

    invoke-static {v0}, Lrx/internal/operators/OperatorPublish$OriginSubscriber;->access$800(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v4, v5}, Lrx/internal/operators/OperatorPublish$OriginSubscriber;->access$900(Lrx/internal/operators/OperatorPublish$OriginSubscriber;J)V

    .line 332
    .end local v2    # "r":J
    :cond_0
    return-void
.end method


# virtual methods
.method public drainQueue(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$OriginSubscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$RequestHandler;, "Lrx/internal/operators/OperatorPublish$RequestHandler<TT;>;"
    .local p1, "originSubscriber":Lrx/internal/operators/OperatorPublish$OriginSubscriber;, "Lrx/internal/operators/OperatorPublish$OriginSubscriber<TT;>;"
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 335
    sget-object v4, Lrx/internal/operators/OperatorPublish$RequestHandler;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v6, v10

    if-nez v4, :cond_1

    .line 336
    const/4 v0, 0x0

    .line 342
    .local v0, "emitted":I
    :cond_0
    sget-object v4, Lrx/internal/operators/OperatorPublish$RequestHandler;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v6, 0x1

    invoke-virtual {v4, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    .line 349
    :goto_0
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorPublish$State;->canEmitWithDecrement()Z

    move-result v3

    .line 350
    .local v3, "shouldEmit":Z
    if-nez v3, :cond_2

    .line 372
    :goto_1
    sget-object v4, Lrx/internal/operators/OperatorPublish$RequestHandler;->WIP:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    move-result-wide v6

    cmp-long v4, v6, v10

    if-gtz v4, :cond_0

    .line 373
    invoke-direct {p0, v0}, Lrx/internal/operators/OperatorPublish$RequestHandler;->requestMoreAfterEmission(I)V

    .line 375
    .end local v0    # "emitted":I
    .end local v3    # "shouldEmit":Z
    :cond_1
    return-void

    .line 353
    .restart local v0    # "emitted":I
    .restart local v3    # "shouldEmit":Z
    :cond_2
    invoke-static {p1}, Lrx/internal/operators/OperatorPublish$OriginSubscriber;->access$600(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 354
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 356
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorPublish$State;->incrementOutstandingAfterFailedEmit()V

    goto :goto_1

    .line 360
    :cond_3
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->notifier:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 361
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorPublish$State;->getSubscribers()[Lrx/Subscriber;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_2
    if-ge v4, v7, :cond_5

    aget-object v2, v6, v4

    .line 362
    .local v2, "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->notifier:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v8, v2, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 366
    .end local v2    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_4
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorPublish$State;->getSubscribers()[Lrx/Subscriber;

    move-result-object v6

    array-length v7, v6

    move v4, v5

    :goto_3
    if-ge v4, v7, :cond_5

    aget-object v2, v6, v4

    .line 367
    .restart local v2    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->notifier:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v8, v2, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 370
    .end local v2    # "s":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 371
    goto :goto_0
.end method

.method public emit(Ljava/lang/Object;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lrx/internal/operators/OperatorPublish$RequestHandler;, "Lrx/internal/operators/OperatorPublish$RequestHandler<TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorPublish$State;->getOrigin()Lrx/internal/operators/OperatorPublish$OriginSubscriber;

    move-result-object v0

    .line 312
    .local v0, "originSubscriber":Lrx/internal/operators/OperatorPublish$OriginSubscriber;, "Lrx/internal/operators/OperatorPublish$OriginSubscriber<TT;>;"
    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->notifier:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    invoke-static {v0}, Lrx/internal/operators/OperatorPublish$OriginSubscriber;->access$600(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lrx/internal/util/RxRingBuffer;->onCompleted()V

    .line 321
    :goto_1
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$RequestHandler;->drainQueue(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-static {v0}, Lrx/internal/operators/OperatorPublish$OriginSubscriber;->access$600(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)Lrx/internal/util/RxRingBuffer;

    move-result-object v1

    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->notifier:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/internal/util/RxRingBuffer;->onNext(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public requestFromChildSubscriber(Lrx/Subscriber;Ljava/lang/Long;)V
    .locals 2
    .param p2, "request"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lrx/internal/operators/OperatorPublish$RequestHandler;, "Lrx/internal/operators/OperatorPublish$RequestHandler<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    invoke-virtual {v1, p1, p2}, Lrx/internal/operators/OperatorPublish$State;->requestFromSubscriber(Lrx/Subscriber;Ljava/lang/Long;)J

    .line 304
    iget-object v1, p0, Lrx/internal/operators/OperatorPublish$RequestHandler;->state:Lrx/internal/operators/OperatorPublish$State;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorPublish$State;->getOrigin()Lrx/internal/operators/OperatorPublish$OriginSubscriber;

    move-result-object v0

    .line 305
    .local v0, "originSubscriber":Lrx/internal/operators/OperatorPublish$OriginSubscriber;, "Lrx/internal/operators/OperatorPublish$OriginSubscriber<TT;>;"
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorPublish$RequestHandler;->drainQueue(Lrx/internal/operators/OperatorPublish$OriginSubscriber;)V

    .line 308
    :cond_0
    return-void
.end method
