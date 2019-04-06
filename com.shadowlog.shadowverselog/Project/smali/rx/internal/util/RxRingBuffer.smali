.class public Lrx/internal/util/RxRingBuffer;
.super Ljava/lang/Object;
.source "RxRingBuffer.java"

# interfaces
.implements Lrx/Subscription;


# static fields
.field public static final SIZE:I

.field private static SPMC_POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static SPSC_POOL:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static _size:I

.field private static final on:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final pool:Lrx/internal/util/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/util/ObjectPool",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I

.field public volatile terminalState:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 144
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v2

    sput-object v2, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    .line 260
    const/16 v2, 0x80

    sput v2, Lrx/internal/util/RxRingBuffer;->_size:I

    .line 263
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const/16 v2, 0x10

    sput v2, Lrx/internal/util/RxRingBuffer;->_size:I

    .line 268
    :cond_0
    const-string v2, "rx.ring-buffer.size"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "sizeFromProperty":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 271
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lrx/internal/util/RxRingBuffer;->_size:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_1
    :goto_0
    sget v2, Lrx/internal/util/RxRingBuffer;->_size:I

    sput v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    .line 279
    new-instance v2, Lrx/internal/util/RxRingBuffer$1;

    invoke-direct {v2}, Lrx/internal/util/RxRingBuffer$1;-><init>()V

    sput-object v2, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    .line 288
    new-instance v2, Lrx/internal/util/RxRingBuffer$2;

    invoke-direct {v2}, Lrx/internal/util/RxRingBuffer$2;-><init>()V

    sput-object v2, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set \'rx.buffer.size\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lrx/internal/util/SynchronizedQueue;

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Lrx/internal/util/SynchronizedQueue;-><init>(I)V

    sget v1, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {p0, v0, v1}, Lrx/internal/util/RxRingBuffer;-><init>(Ljava/util/Queue;I)V

    .line 325
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    .line 300
    iput p2, p0, Lrx/internal/util/RxRingBuffer;->size:I

    .line 301
    return-void
.end method

.method private constructor <init>(Lrx/internal/util/ObjectPool;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/util/ObjectPool",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "pool":Lrx/internal/util/ObjectPool;, "Lrx/internal/util/ObjectPool<Ljava/util/Queue<Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    .line 305
    invoke-virtual {p1}, Lrx/internal/util/ObjectPool;->borrowObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 306
    iput p2, p0, Lrx/internal/util/RxRingBuffer;->size:I

    .line 307
    return-void
.end method

.method public static getSpmcInstance()Lrx/internal/util/RxRingBuffer;
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/RxRingBuffer;-><init>(Lrx/internal/util/ObjectPool;I)V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer;-><init>()V

    goto :goto_0
.end method

.method public static getSpscInstance()Lrx/internal/util/RxRingBuffer;
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-direct {v0, v1, v2}, Lrx/internal/util/RxRingBuffer;-><init>(Lrx/internal/util/ObjectPool;I)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/util/RxRingBuffer;

    invoke-direct {v0}, Lrx/internal/util/RxRingBuffer;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Lrx/Observer;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "child"    # Lrx/Observer;

    .prologue
    .line 432
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p2, p1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public asError(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 436
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public available()I
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lrx/internal/util/RxRingBuffer;->size:I

    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer;->count()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lrx/internal/util/RxRingBuffer;->size:I

    return v0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 366
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 427
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 419
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 373
    const/4 v0, 0x1

    .line 375
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isError(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 423
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 345
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 347
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 351
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 352
    sget-object v0, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 354
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    .line 334
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    sget-object v1, Lrx/internal/util/RxRingBuffer;->on:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    throw v0

    .line 340
    :cond_1
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 406
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v1, :cond_1

    .line 408
    const/4 v0, 0x0

    .line 415
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 384
    :cond_1
    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 397
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    .line 400
    iput-object v1, p0, Lrx/internal/util/RxRingBuffer;->terminalState:Ljava/lang/Object;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    if-eqz v1, :cond_0

    .line 311
    iget-object v0, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 312
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/util/RxRingBuffer;->queue:Ljava/util/Queue;

    .line 314
    iget-object v1, p0, Lrx/internal/util/RxRingBuffer;->pool:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1, v0}, Lrx/internal/util/ObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 316
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 320
    invoke-virtual {p0}, Lrx/internal/util/RxRingBuffer;->release()V

    .line 321
    return-void
.end method
