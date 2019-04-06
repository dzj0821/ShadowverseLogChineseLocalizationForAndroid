.class final Lrx/internal/operators/OperatorZip$ZipSubscriber;
.super Lrx/Subscriber;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<[",
        "Lrx/Observable;",
        ">;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorZip$ZipProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$ZipProducer",
            "<TR;>;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorZip;

.field final zipper:Lrx/internal/operators/OperatorZip$Zip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorZip;Lrx/Subscriber;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;",
            "Lrx/internal/operators/OperatorZip$ZipProducer",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p3, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p4, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->this$0:Lrx/internal/operators/OperatorZip;

    .line 127
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->started:Z

    .line 128
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    .line 129
    iput-object p3, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    .line 130
    iput-object p4, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->producer:Lrx/internal/operators/OperatorZip$ZipProducer;

    .line 131
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 137
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->started:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 141
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    check-cast p1, [Lrx/Observable;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorZip$ZipSubscriber;->onNext([Lrx/Observable;)V

    return-void
.end method

.method public onNext([Lrx/Observable;)V
    .locals 2
    .param p1, "observables"    # [Lrx/Observable;

    .prologue
    .line 150
    .local p0, "this":Lrx/internal/operators/OperatorZip$ZipSubscriber;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 151
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->started:Z

    .line 154
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v1, p0, Lrx/internal/operators/OperatorZip$ZipSubscriber;->producer:Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/OperatorZip$Zip;->start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_0
.end method
