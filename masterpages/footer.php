</div>
</body>
<footer class="text-center">
    <div class="footer-below">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" align="left">
                    Copyright &copy; UNIVERSITAS MUHAMMADIYAH BANJARMASIN <span id="copyright-year"></span>
                </div>
            </div>
        </div>
    </div>
</footer>
</html>

<script>
    var currentYear = (new Date).getFullYear();
    $(document).ready(function () {
        $("#copyright-year").text((new Date).getFullYear());
    });
</script>