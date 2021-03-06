# 
#  Licensed Materials - Property of IBM
#
#  (c) Copyright IBM Corp. 2007,2008,2009
#

class TestIbmDb < Test::Unit::TestCase

  def test_005_UnCtlgConnWithInvUidPwd
    assert_expect do
      dsn = "DATABASE=sample;HOSTNAME=#{hostname};PORT=#{port};UID=not_a_user;PWD=inv_pass"
      begin
        conn = IBM_DB.connect dsn, "", ""
        if conn
          puts "odd, IBM_DB::connect succeeded with an invalid user / password"
          IBM_DB.close conn
        end
      rescue StandardError => connect_err
        puts "Test successful"
      end
    end
  end

end

__END__
__LUW_EXPECTED__
Test successful
__ZOS_EXPECTED__
Test successful
__SYSTEMI_EXPECTED__
Test successful
__IDS_EXPECTED__
Test successful
