.class Lrx/internal/operators/OnSubscribeAmb$1;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeAmb;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeAmb;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeAmb;)V
    .locals 0
    .param p1, "this$0"    # Lrx/internal/operators/OnSubscribeAmb;

    .prologue
    .line 356
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 360
    .local p0, "this":Lrx/internal/operators/OnSubscribeAmb$1;, "Lrx/internal/operators/OnSubscribeAmb.1;"
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->access$100(Lrx/internal/operators/OnSubscribeAmb;)Lrx/internal/operators/OnSubscribeAmb$Selection;

    move-result-object v1

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->access$100(Lrx/internal/operators/OnSubscribeAmb;)Lrx/internal/operators/OnSubscribeAmb$Selection;

    move-result-object v1

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    invoke-virtual {v1}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->unsubscribe()V

    .line 365
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->access$100(Lrx/internal/operators/OnSubscribeAmb;)Lrx/internal/operators/OnSubscribeAmb$Selection;

    move-result-object v1

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->access$100(Lrx/internal/operators/OnSubscribeAmb;)Lrx/internal/operators/OnSubscribeAmb$Selection;

    move-result-object v1

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;

    .line 367
    .local v0, "other":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;->unsubscribe()V

    goto :goto_0

    .line 369
    .end local v0    # "other":Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    :cond_1
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeAmb$1;->this$0:Lrx/internal/operators/OnSubscribeAmb;

    invoke-static {v1}, Lrx/internal/operators/OnSubscribeAmb;->access$100(Lrx/internal/operators/OnSubscribeAmb;)Lrx/internal/operators/OnSubscribeAmb$Selection;

    move-result-object v1

    iget-object v1, v1, Lrx/internal/operators/OnSubscribeAmb$Selection;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 371
    :cond_2
    return-void
.end method
